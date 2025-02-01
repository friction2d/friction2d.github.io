---
title: "Friction 1.0.0-rc.1"
layout: post
lead: "Introducing the first release candidate for Friction 1.0."
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

## Changes since Beta 2

### UI/UX

* UI fix for text effect properties
* Theme fixes
* Toolbars UI/UX fixes
* Restore UI state in timeline
* Updated splash screen
* Icons updates
* Text tool will now open text editor if clicking on text box
* Canvas toolbar now supports show/hide lables
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

### MSAA

This version introduces settings for MSAA, needed for smooth lines and text. Prior to this version MSAA was locked to x4, something that didn't work properly on modern (dedicated) GPUs.

* Default is still x4
* Recommended is x0 or x16 for modern NVIDIA/Radeon cards

Intel (GPU) users should stay on the default x4.

### Align

The align tool got some new options in this version.

* Added support for pivot alignment
  * Align to bounding box
  * Align to scene

### Expressions

Several changes to the expression engine was introduced in this version. We got scene bindings and support for external JS functions/add-ons.

* Editor: removed easing tab
* UI/Font fixes in editor
* Added `clamp` function
* Support external JS functions/add-ons
* Added scene bindings
  * `$scene.fps`
  * `$scene.width`
  * `$scene.height`
  * `$scene.rangeMin`
  * `$scene.rangeMax`
* Fixed crash on apply expression/export to SVG when using `$value` and `$frame`.

### macOS

macOS is still experimental, but we continue to improve the port.

* Improved viewer gesture panning (better acceleration)
* Fixed key events
* Several focus fixes
* Gesture support in timeline
  * zoom (pinch-to-zoom) timeline range
  * scroll (swipe) timeline range

### Linux

The Linux port got several new enchancements (future-proofing) in this version.

* Flatpak support
* XDG Portal support
* Wayland support
* Use EGL as default (GLX is deprecated)
* All binaries now support both X11 and native Wayland out-of-the-box

### SDK

We upgraded to Qt 5.15.16 and latest KDE patches for this version.


---

* See Beta 2 [release notes](https://friction.graphics/releases/friction-100-beta2.html) for more information regarding changes in v1.0.
* See Beta 1 [release notes](https://friction.graphics/releases/friction-100-beta1.html) for more information regarding changes in v1.0.
