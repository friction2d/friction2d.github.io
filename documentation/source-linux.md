---
title: "Building Friction on Linux"
layout: default
---

# Building Friction on Linux

Generic build instructions for Friction on Linux.

## Requirements

* pkg-config
* automake
* autoconf
* python3
* ninja
* cmake
* clang
* Qt5 *(5.12+)*
    * Gui
    * Concurrent
    * Widgets
    * OpenGL
    * Multimedia
    * Qml
    * Xml
    * Svg
* qscintilla
* ffmpeg
    * libavformat
    * libavcodec
    * libavutil
    * libswscale
    * libswresample
* libunwind
* expat
* harfbuzz
* freetype
* fontconfig
* libjpeg-turbo
* libpng
* libwebp
* zlib
* icu

### Example *(Ubuntu)*

```
sudo apt install -y \
build-essential \
clang \
git \
libtool \
autoconf \
automake \
cmake \
python3 \
python-is-python3 \
ninja-build \
libfontconfig1-dev \
libfreetype-dev \
libavcodec-dev \
libavformat-dev \
libavutil-dev \
libqscintilla2-qt5-dev \
libqt5opengl5-dev \
libqt5svg5-dev \
libswresample-dev \
libswscale-dev \
libunwind-dev \
libqt5multimedia5-plugins \
qtbase5-dev-tools \
qtbase5-dev \
qtdeclarative5-dev-tools \
qtdeclarative5-dev \
qtmultimedia5-dev \
qttools5-dev-tools \
libexpat1-dev \
libfreetype-dev \
libjpeg-turbo8-dev \
libpng-dev \
libwebp-dev \
zlib1g-dev \
libicu-dev \
libharfbuzz-dev
```

## Get the source

```
git clone --recurse-submodules https://github.com/friction2d/friction
```

## Build libtcmalloc

```
cd friction/src/gperftools
./autogen.sh
CC=clang CXX=clang++ ./configure --disable-shared
make -j4
```

## Build skia

```
cd friction/src/skia
python3 fetch-gn
bin/gn gen out/build --args='is_official_build=true is_debug=false cc="clang" cxx="clang++" extra_cflags=["-Wno-error"] target_os="linux" target_cpu="x64" skia_use_system_expat=true skia_use_system_freetype2=true skia_use_system_libjpeg_turbo=true skia_use_system_libpng=true skia_use_system_libwebp=true skia_use_system_zlib=true skia_use_system_icu=true skia_use_system_harfbuzz=true skia_use_dng_sdk=false'
ninja -C out/build -j4 skia
```

## Build Friction

```
cd friction
mkdir build
cd build
```

Note that if you are not using Ubuntu or Arch you will need to set paths for ``qscintilla``:

```
cmake -G Ninja \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=/usr \
-DCMAKE_CXX_COMPILER=clang++ \
-DCMAKE_C_COMPILER=clang \
-DUSE_SKIA_SYSTEM_LIBS=ON \
-DQSCINTILLA_INCLUDE_DIRS=<PATH_TO_QSCINTILLA_INCLUDE_DIR> \
-DQSCINTILLA_LIBRARIES_DIRS=<PATH_TO_LIBS> \
-DQSCINTILLA_LIBRARIES=<QSCINTILLA_LIBRARY_NAME> \
..
```

else just use:

```
cmake -G Ninja \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=/usr \
-DCMAKE_CXX_COMPILER=clang++ \
-DCMAKE_C_COMPILER=clang \
-DUSE_SKIA_SYSTEM_LIBS=ON \
..
```

Now build:

```
cmake --build .
```
