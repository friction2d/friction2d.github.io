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

### Changes since Beta 2

* Fixed a crash with NVIDIA GPUs when forcing effects to CPU-only
* Fixed portable settings
* UI (properties) fix for text effects
* Style (CSS) fixes
* Toolbars UI/UX fixes
* Restore UI state in timeline
* Color picker: set flat if none
* Updated splash screen
* Icons updates
* macOS: fix key events
* Focus fixes
* macOS: Gesture support in timeline
  * zoom timeline range
  * scrool timeline range
* Enable MSAA GPU settings
  * Default is 4
  * Recommended is 0 or 16 for modern NVIDIA/Radeon cards
  * Fixes jagged edges on paths and text on some GPUs
* Linux: flatpak support
* Linux: XDG Portal support
* Linux: Wayland support
* Linux: Use EGL as default (GLX is deprecated)
* Linux: Binaries (portable/appimage) now support both X11 and Wayland
* Added support for pivot alignment
  * The align tool supports several new alignments
* Fixed video import fps detection
* Fixed shader `texture` usage
* macOS: Improved viewer gesture pan
* SDK: Moved to Qt 5.15.16 + KDE patches
* Text tool will now open text editor if hovering text
* Canvas toolbar: support show/hide lables
* Expression editor: remove easing tab
* UI fixes in expression editor
* Expressions: added `clamp` function
* Expressions: support external JS functions
* Expressions: Added scene bindings
  * `$scene.fps`
  * `$scene.width`
  * `$scene.height`
  * `$scene.rangeMin`
  * `$scene.rangeMax`
* Fixed crash on apply expression/export to SVG when using `$value` and `$frame` expressions.
* Fill and Stroke: restore UI visibility state

---

* See Beta 2 [release notes](https://friction.graphics/releases/friction-100-beta2.html) for more information regarding changes in v1.0.
* See Beta 1 [release notes](https://friction.graphics/releases/friction-100-beta1.html) for more information regarding changes in v1.0.
