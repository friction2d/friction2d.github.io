---
title: "Building Friction on Linux"
layout: default
---

# Building Friction on Linux

* Do not remove this line (it will not be displayed)
{:toc}

Generic build instructions for Friction on Linux.

## Requirements

* pkg-config
* automake
* autoconf
* python3
* ninja
* cmake
* clang
* Qt5 *(5.12/5.15)*
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

### Ubuntu

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
qt5-image-formats-plugins \
libqt5multimedia5-plugins \
qtbase5-dev-tools \
qtbase5-dev \
qtdeclarative5-dev-tools \
qtdeclarative5-dev \
qtmultimedia5-dev \
qttools5-dev-tools
```

### Fedora/RHEL

```
sudo dnf -y install \
clang \
autoconf \
automake \
libtool \
git \
cmake \
python3 \
yasm \
ninja-build \
fontconfig-devel \
qt5-qtbase-devel \
qt5-qtdeclarative-devel \
qt5-qtmultimedia-devel \
qt5-qtsvg-devel \
zlib-devel
```

Note that ffmpeg is neeed and is not included with Fedora/RHEL.

### Arch Linux

```
pacman -Sy \
clang \
git \
libtool \
autoconf \
automake \
cmake \
python \
ninja \
fontconfig \
freetype2 \
ffmpeg \
qscintilla-qt5 \
qt5-base \
qt5-imageformats \
qt5-multimedia \
qt5-svg \
qt5-declarative \
libunwind
```

## Get the source

```
git clone --recurse-submodules https://github.com/friction2d/friction
```

*You may drop the use of ``--recurse-submodules`` and replace ``src/gperftools`` and ``src/skia`` with tarballs available on [SourceForge](https://sourceforge.net/projects/friction/files/source/).*

## Build libtcmalloc

```
cd src/gperftools
./autogen.sh
CC=clang CXX=clang++ ./configure --disable-shared
make -j4
```

## Build skia


```
cd src/skia
```

### Sync

Skia requires several third-party git modules (4GB+), syncing them will take a while. We have skia minimal tarballs available on [SourceForge](https://sourceforge.net/projects/friction/files/source/) if you want to save disk space and bandwidth. Else:

```
python3 tools/git-sync-deps
```

### Build

```
bin/gn gen out/build --args='is_official_build=true is_debug=false cc="clang" cxx="clang++" extra_cflags=["-Wno-error"] target_os="linux" target_cpu="x64" skia_use_system_expat=false skia_use_system_freetype2=false skia_use_system_libjpeg_turbo=false skia_use_system_libpng=false skia_use_system_libwebp=false skia_use_system_zlib=false skia_use_system_icu=false skia_use_system_harfbuzz=false skia_use_dng_sdk=false'
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
..
```

Now build:

```
cmake --build .
```

## Install Friction

The recommended way to install Friction is to package it after build, depending on your distribution select either `DEB` or `RPM`.

### DEB

```
cpack -G DEB
```

### RPM

```
cpack -G RPM
```

You can now install and maintain Friction with the system package manager.
