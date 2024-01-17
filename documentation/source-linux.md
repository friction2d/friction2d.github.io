---
title: "Building Friction on Linux"
layout: default
---

# Building Friction on Linux

Generic build instructions for Friction on Linux.

*Instructions are for the `main` git branch.*

## Requirements

* pkg-config
* ninja
* python3
* cmake *(3.9+)*
* clang *(7+)*
* Qt5 *(5.12.12 or 5.15.3+)*
    * Gui
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

## Source

```
git clone --recurse-submodules https://github.com/friction2d/friction
```

## Build

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
-DCMAKE_C_COMPILER=clang
..
```

Now build:

```
cmake --build .
```

Package with:

```
cpack -G DEB (or RPM)
```
