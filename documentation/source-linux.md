---
title: "Build on Linux"
layout: documentation
permalink: documentation/source-linux.html
categories: documentation
cover: console.svg
order: 12
---

# Build on Linux

* table of contents
{:toc}

Generic instructions for building Friction on a Linux system.

### Important

Friction relies on specific versions and patches of third-party software for proper operation. We strongly recommend against packaging Friction in third-party distributions because it is exceptionally difficult to ensure compatibility and stability.

For this reason, we are unable to offer support for custom builds. We encourage you to use the official release, as it has been tested and verified to work correctly.

## Requirements

* pkg-config
* ninja
* python3
* cmake
* clang
* Qt 5.15.17 + KDE Patch Collection recommended, minimum 5.15.13
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
sudo apt install clang cmake python3 ninja-build libfontconfig1-dev libfreetype-dev libavcodec-dev libavformat-dev libavutil-dev libqscintilla2-qt5-dev libqt5opengl5-dev libswresample-dev libswscale-dev libunwind-dev qtbase5-dev qtdeclarative5-dev qtmultimedia5-dev libexpat1-dev libfreetype-dev libjpeg-turbo8-dev libpng-dev libwebp-dev zlib1g-dev libicu-dev libharfbuzz-dev libqt5multimedia5-plugins libgl1-mesa-dev libegl1-mesa-dev libgles2-mesa-dev
```

## Get Source

```
git clone --recurse-submodules https://github.com/friction2d/friction
```

Keep the source updated with:

```
git pull && git submodule update --init --recursive
```

## Build

```shell
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

```shell
-DQSCINTILLA_INCLUDE_DIRS=<PATH_TO_QSCINTILLA_INCLUDE_DIR> \
-DQSCINTILLA_LIBRARIES_DIRS=<PATH_TO_LIBS> \
-DQSCINTILLA_LIBRARIES=<QSCINTILLA_LIBRARY_NAME> \
```

Now build:

```
cmake --build . --config Release
```

Executable is available in `src/app/friction`.
