# Install script for directory: /Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/video

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/lib/libopencv_video.4.5.0.dylib"
    "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/lib/libopencv_video.4.5.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_video.4.5.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_video.4.5.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/lib"
        -add_rpath "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/build/lib/libopencv_video.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2" TYPE FILE OPTIONAL FILES "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/video/include/opencv2/video.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/video" TYPE FILE OPTIONAL FILES "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/video/include/opencv2/video/background_segm.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/video/legacy" TYPE FILE OPTIONAL FILES "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/video/include/opencv2/video/legacy/constants_c.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/video" TYPE FILE OPTIONAL FILES "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/video/include/opencv2/video/tracking.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv4/opencv2/video" TYPE FILE OPTIONAL FILES "/Users/matheusazevedo/RUST-SPAR/RustStreamBench/RustStreamBench/libs/opencv-4.5.0/modules/video/include/opencv2/video/video.hpp")
endif()

