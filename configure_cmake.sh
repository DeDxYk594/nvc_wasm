rm -rf build
mkdir build
cd build
# TODO сделать скрипт переносимым
emcmake cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=/home/zhugeo/build/vcpkg/scripts/buildsystems/vcpkg.cmake
