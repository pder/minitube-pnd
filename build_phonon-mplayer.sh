#!/bin/bash

export PATH=$PNDSDK/usr/bin:$PATH 
export CFLAGS="-O2 -march=armv7-a -mfpu=neon -mfloat-abi=softfp" 
export CXXFLAGS="-O2 -march=armv7-a -mfpu=neon -mfloat-abi=softfp" 

mkdir -p build_phonon-mplayer
cd build_phonon-mplayer
cmake -DCMAKE_BUILD_TYPE=release \
      -DCMAKE_TOOLCHAIN_FILE=../PandoraToolchain.cmake \
      ../phonon-mplayer
make
