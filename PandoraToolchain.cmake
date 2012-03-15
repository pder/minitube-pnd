# this one is important
SET(CMAKE_SYSTEM_NAME Linux)

# specify the cross compiler
SET(CMAKE_C_COMPILER   /media/wd_1TB/paul/pandora/pandora-oe-environment/tmp/angstrom.5/cross/armv7a/bin/arm-angstrom-linux-gnueabi-gcc)
SET(CMAKE_CXX_COMPILER /media/wd_1TB/paul/pandora/pandora-oe-environment/tmp/angstrom.5/cross/armv7a/bin/arm-angstrom-linux-gnueabi-g++)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  /home/pder/pandora-dev/arm-2011.03/)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM BOTH)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

#usage sample with the sample case "wesnoth":
#current 1.8 setup:
#PATH=/home/pder/pandora-dev/arm-2011.03/usr/bin:$PATH CFLAGS="-DPANDORA -O2 -pipe -march=armv7-a -mcpu=cortex-a8 -mtune=cortex-a8 -mfpu=neon -ftree-vectorize -mfloat-abi=soft -ffast-math -fsingle-precision-constant -fno-inline-functions" CXXFLAGS="-DPANDORA -O2 -pipe -march=armv7-a -mcpu=cortex-a8 -mtune=cortex-a8 -mfpu=neon -ftree-vectorize -mfloat-abi=soft -ffast-math -fsingle-precision-constant -fno-inline-functions" cmake -DCMAKE_BUILD_TYPE=release -DENABLE_STRICT_COMPILATION=off -DCMAKE_TOOLCHAIN_FILE=/home/pder/pandora-dev/sdk_utils/PandoraToolchain.cmake -DPKG_CONFIG_EXECUTABLE=/home/pder/pandora-dev/arm-2011.03/bin/arm-none-linux-gnueabi-pkg-config -DSDL_CONFIG=/home/pder/pandora-dev/arm-2011.03/usr/bin/sdl-config -DLUA_MATH_LIBRARY=/home/pder/pandora-dev/arm-2011.03/arm-none-linux-gnueabi/libc/usr/lib/libm.so -DPREFERENCES_DIR=wesnoth-1.8_userdata ../wesnoth-1.8.x
#
#current 1.9 setup:
#PATH=/home/pder/pandora-dev/arm-2011.03/usr/bin:$PATH CFLAGS="-DPANDORA -O2 -pipe -march=armv7-a -mcpu=cortex-a8 -mtune=cortex-a8 -mfpu=neon -ftree-vectorize -mfloat-abi=soft -ffast-math -fsingle-precision-constant -fno-inline-functions" CXXFLAGS="-DPANDORA -O2 -pipe -march=armv7-a -mcpu=cortex-a8 -mtune=cortex-a8 -mfpu=neon -ftree-vectorize -mfloat-abi=soft -ffast-math -fsingle-precision-constant -fno-inline-functions" cmake -DCMAKE_BUILD_TYPE=release -DENABLE_STRICT_COMPILATION=off -DCMAKE_TOOLCHAIN_FILE=/home/pder/pandora-dev/sdk_utils/PandoraToolchain.cmake -DPKG_CONFIG_EXECUTABLE=/home/pder/pandora-dev/arm-2011.03/bin/arm-none-linux-gnueabi-pkg-config -DSDL_CONFIG=/home/pder/pandora-dev/arm-2011.03/usr/bin/sdl-config -DLIBINTL_INCLUDE_DIR=/home/pder/pandora-dev/arm-2011.03/arm-none-linux-gnueabi/libc/usr/include/ -DPREFERENCES_DIR=wesnoth-1.9_userdata ../wesnoth-1.9.x
