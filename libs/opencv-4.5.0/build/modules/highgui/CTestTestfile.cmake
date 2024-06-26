# CMake generated Testfile for 
# Source directory: /Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/highgui
# Build directory: /Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_highgui "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
set_tests_properties(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/cmake/OpenCVUtils.cmake;1640;add_test;/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/cmake/OpenCVModule.cmake;1310;ocv_add_test_from_target;/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/highgui/CMakeLists.txt;165;ocv_add_accuracy_tests;/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/highgui/CMakeLists.txt;0;")
