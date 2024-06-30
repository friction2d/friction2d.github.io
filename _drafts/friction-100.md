---
title: "Friction 1.0.0 Alpha 1"
layout: post
categories: releases
---

# Friction 1.0.0 Alpha 1

Draft for Friction 1.0.0 Alpha 1.

## Changes

* Proper support for timecodes
* New application theme *(work-in-progress)*
* Support for Frame In (`I`)
* Support for Frame Out (`O`)
* Support for Markers (`K`)
* Changed shortcut for 'Invert Selection' (`Alt+A`)

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.6...v1.0.0-alpha1).

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
