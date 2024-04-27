#!/bin/sh

set -e

if [ $# -gt 0 ]; then
	for arg in "$@"; do
		APPS="$APPS $arg"
	done
else
	APPS="
image-processing
"
fi

LOG_FILE=benchmarks/log
REPETITIONS=$(seq 1 1 | tr '\n' ' ')
NTHREADS=$(seq 1 "$(sysctl -n hw.logicalcpu)" | tr '\n' ' ')
CHECKSUM_ERROR_MSG="!!!ERROR!!! Checksums failed to verify:"

check_and_mkdir() {
	if [ ! -d "$1" ]; then
		mkdir -pv "$1" | tee -a $LOG_FILE
	fi
}

log() {
	printf "%s - %s\n" "$(date '+%Y-%m-%d|%H:%M:%S:%N')" "$1" | tee -a $LOG_FILE
}

build_app() {
	log "building $1"
	cd "$1"
	cargo build --release
	cd ..
	log "finished building $1"
}

verify_checksum() {
	CORRECT_CHECKSUM=$(awk '{print $1}' "$1")
	TESTING_CHECKSUM=$(md5sum "$2" | awk '{print $1}')

	if [ "$CORRECT_CHECKSUM" != "$TESTING_CHECKSUM" ]; then
		log "
$CHECKSUM_ERROR_MSG
$1 - $CORRECT_CHECKSUM
$2 - $TESTING_CHECKSUM
"
	else
		log "$(basename "$1") $(basename "$2") MATCH"
	fi
}

run_image_processing_bench() {
	log "IMAGE-PROCESSING START"
	build_app image-processing

	BENCH_DIR=benchmarks/image-processing
	check_and_mkdir "$BENCH_DIR"

	for I in $REPETITIONS; do
		log "Running image-processing sequential: $I"
		for INPUT in ./inputs/image-processing/*; do
			check_and_mkdir "$BENCH_DIR"/"$INPUT"
			BENCHFILE="$BENCH_DIR"/"$INPUT"/sequential
			./image-processing/target/release/image-processing sequential 1 "$INPUT" >> "$BENCHFILE"
		done
	done

	for RUNTIME in rust-ssp spar-rust tokio rayon; do
		for I in $REPETITIONS; do
			for T in $NTHREADS; do
				log "Running image-processing $RUNTIME with $T threads: $I"
				for INPUT in ./inputs/image-processing/*; do
					check_and_mkdir "$BENCH_DIR"/"$INPUT"/"$RUNTIME"
					BENCHFILE="$BENCH_DIR"/"$INPUT"/"$RUNTIME"/"$T"
					./image-processing/target/release/image-processing "$RUNTIME" "$T" "$INPUT" >> "$BENCHFILE"
				done
			done
		done
	done

	log "IMAGE-PROCESSING END"
}
if  [ ! -d benchmarks ]; then
	mkdir -pv benchmarks
fi

log "START"
echo >> $LOG_FILE
for APP in $APPS; do
	log "BENCHMARK $APP"

	case "$APP" in
		image-processing) run_image_processing_bench ;;
		*)
			log "ERROR: ${APP}'s execution has not been implemented"
			exit 1
			;;
	esac

	log "BENCHMARK FINISH $APP"
done
echo >> $LOG_FILE

if grep -q "$CHECKSUM_ERROR_MSG" "$LOG_FILE"; then
	log "
!!!IMPORTANT!!! FOUND CHECKSUM ERRORS IN $LOG_FILE.
SOME COMMANDS HAVE GENERATED BAD OUTPUTS
"
else
	log "No checksum errors found!"
fi

log "FINISH"
