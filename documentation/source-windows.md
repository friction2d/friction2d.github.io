---
title: "Build on Windows"
layout: default
permalink: documentation/source-windows.html
---

# Build on Windows

Instructions for building Friction on Windows 10/11.

## Requirements

CMake and Visual Studio (Build Tools) 2017 or 2019 are required.

### CMake

Download the latest stable [installer](https://cmake.org/cmake/download). Install to Program Files, do not add to `PATH` if asked to.

### Visual Studio Build Tools

Download and install Visual Studio [2017](https://aka.ms/vs/15/release/vs_buildtools.exe) or [2019](https://aka.ms/vs/16/release/vs_buildtools.exe) Build Tools.

* Check "Desktop Development with C++"
* Check "C++/CLI support"

## Get Source

We assume that you have git available:

```
git clone --recurse-submodules https://github.com/friction2d/friction
```

## Get the SDK

The Friction SDK is required to build from source.

[Download](https://github.com/friction2d/friction-sdk/releases/download/v1.0.0/friction-sdk-1.0.0r2-windows-x64.7z) and extract, move the extracted `sdk` folder to the Friction source folder.

## Build

Open the Visual Studio Build Tools Command Prompt.

cd to the Friction source folder.

```
set SDK_DIR=%cd%\sdk
set PATH=%ProgramFiles%\CMake\bin;%SDK_DIR%\bin;%PATH%

mkdir build
cd build

cmake -G "Visual Studio 15 2017" -A x64 -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%SDK_DIR% -DBUILD_ENGINE=OFF ..

cmake --build . --config Release
```

Replace `Visual Studio 15 2017` with `Visual Studio 16 2019` if you are using Visual Studio Build Tools 2019.
