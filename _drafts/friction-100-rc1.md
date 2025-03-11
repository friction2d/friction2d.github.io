---
title: "Friction 1.0.0-rc.1"
layout: post
lead: "Introducing the first release candidate for Friction 1.0.0."
image: "/assets/screenshots/100/friction-100b2-screenshot.png"
categories: releases
release: 1.0.0-rc.1
windows_setup: "setup-win64.exe"
windows_portable: "windows-x64.7z"
linux_portable: "linux-x86_64.tar.xz"
linux_appimage: "x86_64.AppImage"
mac_dmg: "x86_64.dmg"
download_active: true
comments: ""
---

While there are some TODOs left we are feature complete and stability is already better than 0.9.6.1. Enjoy!

## Changes since Beta 2

### Documentation

We have documentation! Big thanks to Pablo Gil for doing the majority of work.

We are still working on it, so don't mind spelling mistakes etc, it will be fixed.

https://friction.graphics/documentation

### UI/UX

* Value sliders now support uniform scaling if using the `Shift` modifier
  * `Shift` + `Enter` if adding numbers
* Various UI/UX changes
* UI fix for text effect properties
* Theme fixes
* Toolbars UI/UX fixes
  * Most toolbars now have a right-click context menu with new functions
* Restore UI state in timeline
* Updated splash screen
  * on Windows, been disabled on Linux and macOS
* Icons updates
* Text tool will now open text editor if clicking on text box
* Canvas toolbar now supports show/hide labels
  * See right-click context menu
* Restore UI visibility state for "Fill and Stroke"
  * You can show/hide the widget with the `F` key

### General fixes

* Fixed a crash on some GPUs when forcing effects to CPU-only
* Fixed portable settings
  * Portable prior to this version would not read/write all settings to portable config
* Set flat color if none when color picking
* Fixed fps detection on some video files
* Fixed shader `texture` usage (drop deprecated usage of `texture2D`)
  * Also adapted community shaders to work with the changes
  * **Remember to update your custom shaders before running Friction!**

### MSAA

This version introduces settings for MSAA, needed for smooth lines and text. Prior to this version MSAA was locked to 4x, something that didn't work properly on modern (dedicated) GPUs.

* Default is still 4x
* Recommended is 0x or 16x for modern NVIDIA/Radeon cards

Intel (GPU) users should stay on the default x4.

### Align

The align tool got some new options in this version.

* Added support for pivot alignment
  * Align to bounding box
  * Align to scene
  * Align all pivots to last selected object bounding box
  * Align all pivots to last selected object pivot

### Expressions

Several changes to the expression engine was introduced in this version. We got scene bindings and support for external JS functions/add-ons.

Expression Presets have been added to speed up workflows. They allow to load, save, rename, import, and export presets, which bundle the code written in Bindings, Scripts (Calculate), and Definitions.

* Editor: removed easing tab
* UI/Font fixes in editor
* Added `clamp` function
* Added `lerp` function
* Added `oscillation` function
* Added `noise` function
* Support external JS functions/add-ons
* Added scene bindings
  * `$scene.fps`
  * `$scene.width`
  * `$scene.height`
  * `$scene.rangeMin`
  * `$scene.rangeMax`
* Fixed crash on apply expression/export to SVG when using `$value` and `$frame`.
* Added Presets support, and includes:
  * Copy X
  * Copy Y
  * Orbit X
  * Orbit Y
  * Rotation
  * Time
  * Track Object
  * Wave
  * Wiggle

<video width="100%" controls src="/assets/documentation/expressions/expressions_presets.mp4" title="Using expression presets"></video>

### Non cached Preview

A new way of previewing scene animations have been added. instead of rendering into cache it just plays the canvas view, that's it, showing gizmos, selections, pivots, etc.

See `menu` > `view` > `Preview Cache`.

### macOS

macOS is still experimental, but we continue to improve the port.

* Improved viewer gesture panning (better acceleration)
* Fixed some key events
* Several focus fixes
* Gesture support in timeline
  * zoom (pinch-to-zoom) timeline range
  * scroll (swipe) timeline range

### Linux

The Linux port got several new enhancements (future-proofing) in this version.

* Flatpak support
* XDG Portal support
* Wayland support
* Use EGL as default (GLX is deprecated)
* All binaries now support both X11 and native Wayland out-of-the-box

### SDK

We upgraded to Qt 5.15.16 with the latest KDE patches for this version.

## Support

* If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.
* For general discussion use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

For other inquiries use support at friction dot graphics.

## System Requirements

### Minimum hardware

* 4GB+ RAM
* AVX x86_64 compatible dual core CPU
  * Intel Sandy Bridge Core i3/i5/i7
  * AMD Bulldozer
* OpenGL 3.3 compatible GPU and driver
  * NVIDIA GeForce 8 series (G8x/Tesla)
  * AMD Radeon HD 2000 series (R600/TeraScale 1)
  * Intel HD Graphics 4000 (Ivy Bridge)
* Audio device supporting WASAPI on Windows and PulseAudio on Linux

### Recommended hardware

* 16GB+ RAM
* CPU
  * Intel Kaby Lake Core i5/i7 or newer
  * AMD Ryzen 1000 series or newer
* GPU
  * NVIDIA GeForce GTX 1050 or newer
  * AMD Radeon RX 560 or newer
  * Intel UHD Graphics 620 or newer

### Supported systems

* Microsoft Windows (N) 10/11 x64
  * *Visual C++ [Redistributable](https://aka.ms/vs/17/release/vc_redist.x64.exe) 2017 or higher is needed*
* Enterprise Linux 7.9/8/9/10 x86_64 and compatible
  * *VFX Platform CY2021+ compatible*
  * *Generic Linux with X11 or Wayland, PulseAudio and glibc 2.17+ should work*
* macOS Monterey (12.7) Intel x86_64, will work on latest macOS
  * *Apple Silicon is supported through Rosetta 2 at the moment*
  * ***Note macOS is still experimental***

---

* See Beta 2 [release notes](https://friction.graphics/releases/friction-100-beta2.html) for more information regarding changes in v1.0.0.
* See Beta 1 [release notes](https://friction.graphics/releases/friction-100-beta1.html) for more information regarding changes in v1.0.0.
