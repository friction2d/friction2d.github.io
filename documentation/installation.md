---
title: "Installation"
layout: default
permalink: documentation/installation.html
---

# Installation

Friction can be installed on Windows 10/11 and most Linux distributions available.

Latest stable release can be downloaded from https://friction.graphics/#download

## Requirements

### Minimum hardware

* 4GB RAM
* AVX x86_64 compatible dual core CPU
  * Intel Sandy Bridge Core i3/i5/i7
  * AMD Bulldozer
* OpenGL 3.3 compatible GPU and driver
  * NVIDIA GeForce 8 series (G8x/Tesla)
  * AMD Radeon HD 2000 series (R600/TeraScale 1)
  * Intel HD Graphics 4000 (Ivy Bridge)
* Audio device supporting WASAPI on Windows and PulseAudio on Linux

### Recommended hardware

* 32GB RAM
* CPU
  * Intel Kaby Lake Core i5/i7 or newer
  * AMD Ryzen/Threadripper 1000 series or newer
* GPU
  * NVIDIA GeForce GTX 1050 or newer
  * AMD Radeon RX 560 or newer
  * Intel UHD Graphics 620 or newer

### Supported systems

* Microsoft Windows (N) 10/11 x64
  * Visual C++ [Redistributable](https://aka.ms/vs/17/release/vc_redist.x64.exe) 2017 or higher is needed on Windows 10
* Red Hat Enterprise Linux 7.9/8.x/9.x x86_64 and compatible
  * Generic Linux with X11/XWayland, pulseaudio and glibc 2.17+ should work

## Windows

Friction is available as an installer *(.exe)* or portable archive *(.7z)*.

### Installer

Double-click and follow the instructions. On Windows 11 you might need to right-click and launch as administrator.

A start menu entry will be added and project files *(.friction)* will be linked to Friction.

Launch Friction from the start menu or the optional desktop shortcut.

*Note: The installer and application is not signed and may trigger warnings when launched, this is normal.*

### Portable

This is a plain 7-Zip archive, extract and launch `friction.exe`.

* *Note: on Windows 10 you need 7-Zip installed.*
* *Note: The application is not signed and may trigger warnings when launched, this is normal.*

## Linux

Friction is available as an AppImage, RPM and portable archive *(tar.bz2)*. Only the package format differ, the binaries are identical.

### AppImage

Make executable and run the file.

### RPM

Can be installed on any distribution that uses RPM.

### Portable

This is a plain tarball compressed with bzip2. Extract and run `friction`.

*Note: The `desktop_integration.sh` script will integrate Friction with your desktop (launcher and mimetypes).*
