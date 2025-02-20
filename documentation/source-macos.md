---
title: "Build on macOS"
layout: default
permalink: documentation/source-macos.html
---

# Build on macOS

* table of contents
{:toc}

Generic instructions for building Friction on macOS.

macOS Monterey (12) or newer recommended, will also build on macOS 10.15 and 11.

Only tested on Intel (x86_64), Apple silicon (M series) status is unknown.

## Xcode

Open a new terminal using `Terminal.app`.
Then launch the command:

```
xcode-select --install
```

## MacPorts

Go to [macports.org](https://www.macports.org/) and [download](https://www.macports.org/install.php) for your macOS version and follow the "installing MacPorts" instructions.

### Required packages

Open a new terminal using `Terminal.app`.
Then launch the command:
```
sudo port install qt5-qtbase qt5-qttools qt5-qtmultimedia qt5-qtdeclarative qscintilla-qt5 ffmpeg4 pkgconfig ninja
```

### Python

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

## Get Source

```
git clone --recurse-submodules https://github.com/friction2d/friction
```

## Build

Create the `build` folder:

```
mkdir build
cd build
```

Configure:

```shell
cmake -G Ninja \
-DCMAKE_BUILD_TYPE=Release \
-DQSCINTILLA_INCLUDE_DIRS=/opt/local/libexec/qt5/include \
-DQSCINTILLA_LIBRARIES_DIRS=/opt/local/libexec/qt5/lib \
-DQSCINTILLA_LIBRARIES=qscintilla2_qt5 \
..
```

Now build:

```
cmake --build . --config Release
```

## Run

Executable `.app` file is available in `src/app/friction`.
Optionally you could launch Friction with the terminal and get some debug messages (Build with `Debug` for more info etc):

```
src/app/friction.app/Contents/MacOS/friction
```
