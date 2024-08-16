---
title: "Friction 0.9.6.1"
layout: post
lead: "The first maintenance release for 0.9.6 is now available."
image: "/assets/screenshots/096/friction-096-screenshot.jpg"
categories: releases
release: 0.9.6.1
windows_setup: "setup-win64.exe"
windows_portable: "windows-x64.7z"
linux_portable: "linux-x86_64.tar.xz"
linux_appimage: "x86_64.AppImage"
linux_rpm: "1.x86_64.rpm"
download_active: true
comments: ""
---

## Changes

Version 0.9.6 marked the end of feature releases for the 0.9 series. The `v0.9` branch is now in maintenance mode.

If critical fixes are added to the `main` branch during development of 1.0 they will be backported if needed.

This release includes the following fixes and various changes backported from the `main` branch:

* **SVG**
  * Fixed `skew` `X`+`Y` animation on export
  * Set default values for stroke and fill on import
  * Added linejoin and linecap support on import
  * Add `fill-rule` if path is `even-odd` on export
* **Gui**
  * Fixed several issues with dockable windows
  * Added scene actions to main menu
  * Fixed min/max ranges in spinbox widgets
  * Fixed timecode calculation
  * Disable timeline while rendering
  * Fixed double-click on text box *(will now open correct widget)*
  * Added action 'Add Key(s)' with shortcut (`Insert`)
  * Show vertical scrollbar in timeline if needed
* **Core**
  * Fixed broken undo state after import *(on Windows)*
  * Block auto timer during shutdown
  * Check project format version on load *(and warn if not compatible)*
  * Check read/write access to user config directory on startup *(and warn if issues)*
* **Renderer**
  * Fixed render queue issues with multiple different scenes
  * Fixed image sequence file extension *(suffix will now match codec)*
  * Show output format in queue label
  * Will install a default set of render presets *(to user config directory)*
    * MP4 Video
    * MP4 Video + Audio
    * ProRes Video
    * ProRes Video + Audio
    * PNG Image(s)
    * TIFF Image(s)

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.6...v0.9.6.1).

## Known Issues

Friction is in early development, expect issues and missing features.

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
