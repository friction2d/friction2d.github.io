---
title: "Build on Linux"
layout: default
permalink: documentation/source-linux.html
---

# Build on Linux

Generic instructions for building Friction on a Linux system.

## Requirements

* pkg-config
* ninja
* python3
* cmake
* clang
* Qt 5.15.16 + KDE Patch Collection recommended, minimum 5.15.3
    * Gui
    * Widgets
    * OpenGL
    * Multimedia
    * Qml
    * Xml
* qscintilla
* ffmpeg 4.2 recommended, [will not build on 7+](https://github.com/friction2d/friction/issues/135)
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

Example for Debian/Ubuntu compatible systems:

```
sudo apt install clang cmake python3 ninja-build libfontconfig1-dev libfreetype-dev libavcodec-dev libavformat-dev libavutil-dev libqscintilla2-qt5-dev libqt5opengl5-dev libswresample-dev libswscale-dev libunwind-dev qtbase5-dev qtdeclarative5-dev qtmultimedia5-dev libexpat1-dev libfreetype-dev libjpeg-turbo8-dev libpng-dev libwebp-dev zlib1g-dev libicu-dev libharfbuzz-dev libqt5multimedia5-plugins
```

## Get Source

```
git clone --recurse-submodules https://github.com/friction2d/friction
```

Keep the source updated with:

```
git pull && git submodule update -i --recursive
```

## Build

```
mkdir build
cd build
cmake -G Ninja \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=/usr \
-DCMAKE_CXX_COMPILER=clang++ \
-DCMAKE_C_COMPILER=clang \
..
```

Note that on some configurations you will need to specify `qscintilla` paths:
```
-DQSCINTILLA_INCLUDE_DIRS=<PATH_TO_QSCINTILLA_INCLUDE_DIR> \
-DQSCINTILLA_LIBRARIES_DIRS=<PATH_TO_LIBS> \
-DQSCINTILLA_LIBRARIES=<QSCINTILLA_LIBRARY_NAME> \
```

Now build:

```
cmake --build . --config Release
```

Executable is available in `src/app/friction`.
