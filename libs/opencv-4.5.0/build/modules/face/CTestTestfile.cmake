# CMake generated Testfile for 
# Source directory: /Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/opencv_contrib/modules/face
# Build directory: /Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/modules/face
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_face "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/bin/opencv_test_face" "--gtest_output=xml:opencv_test_face.xml")
set_tests_properties(opencv_test_face PROPERTIES  LABELS "Extra;opencv_face;Accuracy" WORKING_DIRECTORY "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/cmake/OpenCVUtils.cmake;1640;add_test;/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/cmake/OpenCVModule.cmake;1310;ocv_add_test_from_target;/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/cmake/OpenCVModule.cmake;1074;ocv_add_accuracy_tests;/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/opencv_contrib/modules/face/CMakeLists.txt;2;ocv_define_module;/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/opencv_contrib/modules/face/CMakeLists.txt;0;")
