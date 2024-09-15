cmake_minimum_required(VERSION 3.18)

project(nvc_wasm VERSION 0.1 LANGUAGES C CXX)

file(GLOB NVC_SOURCES ./3rdparty/nvc/src/*.c)
add_executable(nvc_wasm ${NVC_SOURCES})
target_include_directories(nvc_wasm PUBLIC "./3rdparty/nvc/src")
