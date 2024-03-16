---
title: "Friction 0.9.6 draft"
layout: post
categories: releases
release: 0.9.6
---

# Friction 0.9.6 *(ETA 2024-03-XX)*

Draft for Friction 0.9.6 release.

<img style="width: 100%; border-radius: .25em;" src="/assets/hero-poster.jpg" alt="Screenshot">


## New UI layout

Lorem ipsum.

### Default

Lorem ipsum.

![Screenshot](/assets/screenshots/096/friction-096-common.jpg)

### Containers

Lorem ipsum.

![Screenshot](/assets/screenshots/096/friction-uilayout-containers.jpg)

### Examples

Lorem ipsum.

![Screenshot](/assets/screenshots/096/friction-uilayout-example-01.jpg)
![Screenshot](/assets/screenshots/096/friction-uilayout-example-02.jpg)
![Screenshot](/assets/screenshots/096/friction-uilayout-example-03.jpg)
![Screenshot](/assets/screenshots/096/friction-uilayout-example-04.jpg)

## Changes

Changes since 0.9.5.

### UI

* New UI layout handler
* Render Queue: Fix missing labels (-none-) on project load
* Added shortcut for bookmark color (B)
* Added shortcut for Pivot local/global (P)
* Don't allow group link to be dropped on it's target
* Render queue state fixes
* Various minor tweaks
* Updated some icons

### Linux

* Removed Ubuntu Lunar (23.04) native package
* Added Ubuntu Noble (24.04) native package
* Removed Flatpak package, will submit to flathub after release
* Fixed broken RPM package

### Other

* Major improvements to the build process (skia is now part of Friction)
* Started moving GUI code to frictionui library
* Moved more code to the frictioncore library
* Removed a lot of unused code
* Upgraded from Qt 5.12 to Qt 5.15

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.5...main).

## Known Issues

* Friction is beta quality software, expect issues and missing/broken features
* CSS style sheets are not supported when importing an SVG
  * SVG's from Adobe Illustrator (and others?) may have issues due to this
  * In some circumstances this might result in an invalid undo state after import
* SVG gradients may not import correctly
  * In general gradients needs some work
* There are still some minor issues with HiDPI
* Shader effects are still experimental and may introduce issues

And more, see our [issue tracker](https://github.com/friction2d/friction/issues) for more information.

## Support

* If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.
* For general discussion, feature requests etc use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

For other inquiries use support at friction dot graphics.

## System Requirements

### Minimum hardware

* 4GB RAM available
* AVX x86_64 compatible dual core CPU
  * Intel Sandy Bridge Core i3/i5/i7
  * AMD Bulldozer
* OpenGL 3.3 compatible GPU and driver
  * NVIDIA GeForce 8 series (G8x/Tesla)
  * AMD Radeon HD 2000 series (R600/TeraScale 1)
  * Intel HD Graphics 4000 (Ivy Bridge)
* Audio device supporting WASAPI on Windows and PulseAudio on Linux

### Supported systems

* Microsoft Windows 10/11
  * [Visual C++ Redistributable 2017](https://aka.ms/vs/17/release/vc_redist.x64.exe) or higher is needed on Windows 10
* Ubuntu 22.04/23.10/24.04 and compatible
* Red Hat Enterprise Linux 7.9/8.x/9.x and compatible
* Generic Linux (glibc 2.17+/libgcc 4.8.5+)

#### Linux notes

We have a universal Linux build recommended for most users. It's provided as a portable tarball, RPM, AppImage and Flatpak.

* They are all identical, only the package format differs
* Flatpak is sandboxed with limited access to the file system
* Third-party dependencies are kept in sync with the Windows build, only the compilers differ

Ubuntu packages are built against system dependencies and differs from our universal build.

Native Wayland is currently not supported.
