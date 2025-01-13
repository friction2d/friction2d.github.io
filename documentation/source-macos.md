---
title: "Build on macOS"
layout: default
permalink: documentation/source-macos.html
---

# Build on macOS

Generic instructions for building Friction on a macOS system.

## Requirements

### 1. Xcode
Open a new terminal using `Terminal.app`.
Then launch the command:
```
xcode-select --install
```

### 2. MacPorts
Now go to [https://www.macports.org/](https://www.macports.org/) and move to [Available Downloads](https://www.macports.org/install.php), download your OS version installer and follow the "intalling MacPorts" instructions.

### 3. Required packages
Open a new terminal using `Terminal.app`.
Then launch the command:
```
sudo port install qt5-qtbase qt5-qttools qt5-qtmultimedia qt5-qtdeclarative qscintilla-qt5 ffmpeg pkgconfig ninja
```

Additionally you might need to install ffmpeg 4.2:
1) Download and extract [this installer](https://www.ffmpeg.org/releases/ffmpeg-4.2.10.tar.xz)
2) an a terminal move to:
```
3. cd /folder-where-ffmpeg-is/
```
3) launch the command:
```
4. MKJOBS=${MKJOBS:-2}
./configure \
--prefix=/opt/local/ffmpeg42 \
--extra-ldflags=-L/opt/local/lib \
--enable-shared \
--disable-static \
--disable-securetransport \
--disable-audiotoolbox \
--disable-videotoolbox \
--disable-libxcb \
--disable-hwaccels \
--disable-devices \
--disable-openssl \
--disable-sdl2 \
--disable-xlib \
--disable-libxcb \
--disable-libv4l2 \
--disable-alsa \
--disable-network \
--disable-programs \
--disable-debug \
--disable-doc \
--enable-avresample \
--enable-gpl \
--enable-version3 \
--disable-avisynth \
--disable-gnutls \
--disable-libass \
--disable-libbluray \
--disable-libbs2b \
--disable-libcaca \
--enable-libmp3lame \
--disable-libopencore-amrnb \
--disable-libopencore-amrwb \
--disable-libopus \
--disable-libspeex \
--enable-libtheora \
--disable-libvidstab \
--disable-libvo-amrwbenc \
--enable-libvorbis \
--enable-libvpx \
--enable-libx264 \
--enable-libaom \
--enable-libx265 \
--enable-libxvid
make -j${MKJOBS}
sudo make install
```
4) Update your PATH:
```
nano ~/.zshrc
```
5) Add at the end of the file:
```
export PATH="/opt/local/ffmpeg42/lib/pkgconfig:$PATH"
```
6) Press `control + x`, then type `y` and hit `return`, hit  `return` again to confirm.


### 4. Python
Install and/or make sure `python` and `python3` point both at Python3:
* In a terminal launch the command:
```
which python
```
And:
```
which python3
```
So, create a link to point `python` to `python3`:
```
sudo ln -s /opt/local/bin/python3 /usr/local/bin/python
```

### 5. Get Source

```
git clone --recurse-submodules https://github.com/friction2d/friction
```

### 6. Build

Create the `/build/` folder:
```
mkdir build
cd build
```

Configure:
```
cmake -G Ninja \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=/usr \
-DCMAKE_CXX_COMPILER=clang++ \
-DCMAKE_C_COMPILER=clang \
-DQSCINTILLA_INCLUDE_DIRS=/opt/local/libexec/qt5/include \
-DQSCINTILLA_LIBRARIES_DIRS=/opt/local/libexec/qt5/lib \
-DQSCINTILLA_LIBRARIES=qscintilla2_qt5 \
..
```

Now build:

```
cmake --build . --config Release
```

### 7. Run

Executable `.app` file is available in `src/app/friction`.
Optionally you could launch Friction with the terminal and get some debug messages:
```
src/app/friction.app/Contents/MacOS/friction
```

