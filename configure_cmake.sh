#/bin/bash
rm -rf build
mkdir build
cd build
# TODO сделать скрипт переносимым
emcmake cmake .. -DCMAKE_BUILD_TYPE=Release
