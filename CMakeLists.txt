cmake_minimum_required(VERSION 3.28)

project(nvc_wasm VERSION 0.1 LANGUAGES C CXX)

find_package(Python3 REQUIRED COMPONENTS Interpreter Development)
message(STATUS "Found python3 executable at " PYTHON3_EXECUTABLE)

add_subdirectory(./3rdparty/zlib)
add_subdirectory(./3rdparty/libxml2)
add_subdirectory(./3rdparty/llvm-project/llvm) # HUGE library!

file(GLOB NVC_SOURCES ./3rdparty/nvc/src/*.c)
add_executable(nvc_wasm ${NVC_SOURCES})
target_include_directories(nvc_wasm PUBLIC "./3rdparty/nvc/src")
