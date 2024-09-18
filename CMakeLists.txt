cmake_minimum_required(VERSION 3.29.2) # It is required by vcpkg

project(nvc_wasm VERSION 0.1 LANGUAGES C CXX)

set(LLVM_BUILD_STATIC ON)
set(LIBXML2_WITH_PYTHON OFF)
set(LLVM_INCLUDE_TESTS OFF)
set(LLVM_DISABLE_OCAML ON)

include_directories("./build/3rdparty/llvm-project/llvm/include") # LLVM_INCLUDE_DIR
include_directories("./3rdparty/llvm-project/llvm/include") # LLVM_MAIN_INCLUDE_DIR

add_subdirectory(./3rdparty/zlib)
add_subdirectory(./3rdparty/libxml2)
add_subdirectory(./3rdparty/llvm-project/llvm)


file(GLOB NVC_SOURCES ./3rdparty/nvc/src/*.c)
add_executable(nvc_wasm ${NVC_SOURCES})
target_include_directories(nvc_wasm PUBLIC "./3rdparty/nvc/src")
