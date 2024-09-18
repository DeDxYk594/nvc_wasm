cmake_minimum_required(VERSION 3.29.2) # It is required by vcpkg

project(nvc_wasm VERSION 0.1 LANGUAGES C CXX)

find_package(Python3 REQUIRED COMPONENTS Interpreter Development)
message(STATUS "Found python3 executable at " $PYTHON3_EXECUTABLE)

add_subdirectory(./3rdparty/zlib)
add_subdirectory(./3rdparty/libxml2)

file(GLOB NVC_SOURCES ./3rdparty/nvc/src/*.c)
add_executable(nvc_wasm ${NVC_SOURCES})
target_include_directories(nvc_wasm PUBLIC "./3rdparty/nvc/src")
