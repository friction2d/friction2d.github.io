---
title: "Friction 1.0.0 Beta 1"
layout: post
categories: releases
---

# Friction 1.0.0 Beta 1

Draft for Friction 1.0.0 Beta 1.

## Changes

* Proper support for timecodes
* New Theme *(work-in-progress)*
* Support for Split Clip (`K`)
* Support for Markers (`M`)
* Support for Frame In (`I`)
* Support for Frame Out (`O`)
* Changed shortcut for 'Invert Selection' (`Alt+A`)

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.6.1...v1.0.0-beta1).

### Split Clip

Friction now supports split clip. This action is available through the shortcut `K` on the timeline.

<video controls src="/assets/videos/100/friction-split-clip.mp4" title="Split action in use"></video>

Or through the context menu on the clip or the timeline scrollbar.

| Clip Context Menu | Timeline Scrollbar Context Menu |
| ------ | -------- |
| ![Clip context menu](/assets/screenshots/100/friction-clip-context-menu.jpg) | ![Frame scroll bar context menu](/assets/screenshots/100/friction-framescrollbar-context-menu.jpg)

### Markers

Friction now has initial support for markers on the timeline. This action is available through the shortcut `M` on the timline and through the timeline scrollbar context menu.

*Note: If a marker already exists it will be removed. Clear all markers is available in the timeline scrollbar context menu.*

<video controls src="/assets/videos/100/friction-markers.mp4" title="Markers in use"></video>

### Frame In/Out

Friction now has initial support for frame in/out on the timeline. This action is available through the shortcut `I` for in and shortcut `O` for out. The actions are also available through the timeline scrollbar context menu.

*Note: If a in/out already exists it will be removed. Clear in/out is available in the timeline scrollbar context menu.*

<video controls src="/assets/videos/100/friction-frame-inout.mp4" title="Frame in/out in use"></video>

## Known Issues

Friction is in early development, expect issues and missing features

* SVG gradients may not import correctly
* There are still some minor issues with HiDPI
* Shader effects are still experimental
* GPU accelerated path support may not be supported on Radeon GPU's
* Flickering on some projects (GPUs) during playback/video export

And more, see our [issue tracker](https://github.com/friction2d/friction/issues) for more information.

## Support

* If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.
* For general discussion, feature requests etc use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

For other inquiries use support at friction dot graphics.

## System Requirements

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
  * AMD Ryzen 1000 series or newer
* GPU
  * NVIDIA GeForce GTX 1050 or newer
  * AMD Radeon RX 560 or newer
  * Intel UHD Graphics 620 or newer

### Supported systems

* Microsoft Windows (N) 10/11 x64
  * *Visual C++ [Redistributable](https://aka.ms/vs/17/release/vc_redist.x64.exe) 2017 or higher is needed on Windows 10*
* Red Hat Enterprise Linux 7.9/8.x/9.x x86_64 and compatible
  * *Generic Linux with X11/XWayland, PulseAudio and glibc 2.17+ should work*
