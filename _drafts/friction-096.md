---
title: "Friction 0.9.6 released"
layout: post
categories: releases
release: 0.9.6
---

# Friction 0.9.6

The first stable release for 2024 is now done. This release includes several improvements, new features, and critical fixes.

This will likely be the last feature release for the 0.9 series. Focus is now on the 1.0 series.

<img style="width: 100%; border-radius: .25em;" src="/assets/screenshots/096/friction-096-screenshot.jpg" alt="Screenshot of 0.9.6">

## UI/UX

This release includes several UI/UX changes.

* Improved viewer and timeline UI
* Don't wrap item labels
* Improved "Fill and Stroke" widgets
* New UI layout handler (more flexible)
* Render Queue: Fix missing labels (-none-) on project load
* Added shortcut for bookmark color (B)
* Added shortcut for Pivot local/global (P)
* Don't allow group link to be dropped on it's target
* Render queue state fixes
* Various minor tweaks/fixes
* Updated icon theme
* Removed legacy icon code
* Icon fixes for HiDPI
* Check that recent file exists before adding to menu
* Added "Clear Recent Files" in edit menu
* Timeline settings menu renamed to "filters"
* Fixed menu state on project load
* Allow modifications on the timeline/graph during playback

## SVG

* Fixed path `keyTimes` when exporting SVG
* Improved export SVG dialog
* Added `line` support in SVG importer

## Renderer

The renderer now supports profiles on selected codecs.

* H264 *(baseline/main/high)*
* ProRes *(proxy/lt/standard/hq/4444/xq)*
* AV1 *(main/high/professional)*
* VP9 *(0/1/2/3)*
* MPEG4 *(simple/core/main)*
* VC1 *(simple/main/complex/advanced)*

## Effects

* Effects can now be renamed
* Improved shader effects stability

## Windows

* Support window title bar dark/light theme
* Remove dependency on Windows Media Foundation (Support for Windows N)

## Linux

* Fixed broken RPM package
* Bundle xcb libraries for better compatibility

## Other

* Several bug/crash fixes
* Major improvements to the build process
* More modular code
* Removed/Refactored a lot of legacy code
* Upgraded from Qt 5.12.12 to Qt 5.15.14
  * Fixes several UI issues
  * Qt 5.15.3+ is now a requirement
* Warning during startup if using unsupported FFmpeg version
  * We only support the version we ship with our binaries
* QtSvg and image formats is not needed anymore, we only need PNG (included in qtbase)

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.5...v0.9.6).

## Known Issues

* Friction is in early development, expect issues and missing features
* CSS style sheets are not supported when importing an SVG
  * SVG's from Adobe Illustrator (and others?) may have issues due to this
  * In some circumstances this might result in an invalid undo state after import
* SVG gradients may not import correctly
  * In general gradients needs some work
* There are still some minor issues with HiDPI
* Shader effects are still experimental
* GPU accelerated path support may not be supported on Radeon cards (no AA)
  * Can be disabled in settings
* Flickering on some projects (GPUs) during playback/video export
  * Disable GPU in settings/effects

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
  * Generic Linux with X11, pulseaudio and glibc 2.17+ should work
