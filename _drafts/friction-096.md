---
title: "Friction 0.9.6 draft"
layout: post
categories: releases
release: 0.9.6
---

# Friction 0.9.6 *(ETA 2024-03-03)*

Draft for Friction 0.9.6 *"1 year anniversary edition"* release.

<img style="width: 100%; border-radius: .25em;" src="/assets/hero-poster.jpg" alt="Screenshot">

## Changes

Changes since 0.9.5.

### UI

* Render queue state fixes
* Various minor tweaks
* Updated some icons
* New UI layout handler *(not enabled yet, will be default in beta 2)*

### Linux

* Removed Ubuntu Lunar native package (use portable/AppImage/Flatpak)

### Other

* Major improvements to the build process
* Upgraded from Qt 5.12.12f to Qt 5.15.12

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
* Ubuntu 22.04/23.10 and compatible
* Red Hat Enterprise Linux 7.9/8.x/9.x and compatible
* Generic Linux (glibc 2.17+/libgcc 4.8.5+)

#### Linux notes

We have a universal Linux build recommended for most users. It's provided as a portable tarball, RPM, AppImage and Flatpak.

* They are all identical, only the package format differs
* Flatpak is sandboxed with limited access to the file system
* Third-party dependencies are kept in sync with the Windows build, only the compilers differ

Ubuntu packages are built against system dependencies and differs from our universal build.

Native Wayland is currently not supported.
