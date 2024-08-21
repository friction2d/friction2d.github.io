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

Friction version 0.9.6.1 marks the end of development for the 0.9 series. The 0.9 series is now in maintenance mode, receiving only bug fixes until the upcoming 1.0 release later this year.

## Changes

This release incorporates several fixes and changes backported from the main branch.

* **SVG**
  * Fixed `skewX` + `skewY` animation on export
  * Fixed default values for `stroke` and `fill` on import
  * Fixed `stroke-linecap` and `stroke-linejoin` on import/export
  * Fixed path `fill-rule` on export
  * [Added support](#svg-mask-support) for `mask` on export
* **Gui**
  * Fixed several issues with dockable windows
  * Fixed min/max ranges in spinbox widgets
  * Fixed timecode calculation
  * Fixed double-click on text box *(will now open correct widget)*
  * Added scene actions to main menu
  * Disable timeline while rendering
  * Added action 'Add Key(s)' with shortcut (`Insert`)
  * Show vertical scrollbar in timeline if needed
  * Minor UI changes to render queue widgets
* **Core**
  * Fixed broken undo state after import *(on Windows)*
  * Block auto timer during shutdown
  * Check project format version on load *(and warn if not compatible)*
  * Check read/write access to user config directory on startup *(and warn if issues)*
* **Renderer**
  * Fixed render queue issues with multiple different scenes
  * Fixed image sequence file extension *(suffix will now match codec)*
  * Show output format in queue label
  * [Includes a set of default render profiles](#default-render-profiles)

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.6...v0.9.6.1).

### SVG Mask Support

Friction now supports the `mask` feature in SVG.

![Example Project in SVG](https://friction.graphics/assets/tutorials/tutorial-masking.svg)
**[Download Example Project](https://friction.graphics/assets/tutorials/tutorial-masking.friction)**

1. **Group Desired Elements:** Combine the objects you want to mask into a single group.
2. **Convert Group to Layer:** Promote the group to a layer for easier manipulation. **This step is essential for SVG export.**
3. **Apply Blend Mode:** Set the blend mode of the element you want to use as a mask to `DstIn`.

### Default Render Profiles

Friction will now install a common set of render profiles for easy export.

* MP4 Video
* MP4 Video + Audio
* ProRes Video
* ProRes Video + Audio
* PNG Image(s)
* TIFF Image(s)

## Known Issues

Friction is in early development, expect issues and missing features.

* SVG gradients may not import correctly
* There are some issues with HiDPI, most will be resolved in version 1.0
* Shader effects are still experimental
* GPU accelerated path support may not work properly when using Radeon GPU's
* Flickering on some projects (GPUs) during playback/video export, related to opacity

And many more, see our [issue tracker](https://github.com/friction2d/friction/issues) for more information.

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
