---
title: "Friction 1.0.0-beta.2"
layout: post
lead: "Introducing the second beta release for Friction 1.0. This release includes several fixes, some new features and UI/UX improvements."
image: "/assets/screenshots/100/friction-100b2-screenshot.png"
categories: releases
release: 1.0.0-beta.2
windows_setup: "setup-win64.exe"
windows_portable: "windows-x64.7z"
linux_portable: "linux-x86_64.tar.xz"
linux_appimage: "x86_64.AppImage"
linux_rpm: "1.x86_64.rpm"
download_active: true
---

**Warning!** Project files created/saved in this version cannot be opened in older versions of Friction. Always back up your work and avoid using beta versions for production projects.

### Changes since Beta 1

* **SVG export:** Support for `animateMotion` (follow path)
  * The 'follow path' effect can now be used for SVG animations
* **SVG Import:** Support Inkscape labels
* **SVG Import:** Fixed SVG color import regression from beta 1
* **UI:** Use Qt mouse cursors as default, fixes HiDPI issues
* **UX:** Fix font widget focus
* **Canvas:** Fix nodes overlay on HiDPI
* **UX:** Do not collapse docks if they have widgets
* **UX:** New Color Pick Mode (refactored)
* **UI:** Icon updates
* **Core:** Various Undo/Redo fixes
* **UI:** Add "Fit to Canvas Width" action (Ctrl+9)
* **UI:** Refactored toolbars
  * They are movable
  * Some actions can be added/removed
  * See context menu for each toolbar for various options
* **UX:** Scene settings dialog can now convert to/from frames/time
* **Renderer:** Support In/Out range
* **Graph:** Fix inconsistent zoom behavior
* **Timeline:** Do not apply easing on smart paths
* **Scene Menu:** Add in/out/marker actions
* **Timeline:** Support status bar message
* **UI:** Several fixes/improvements to the marker editor
* **Timeline:** Support interactive markers
* **Timeline:** Support interactive In/Out
* **Effects:** Add offset parameter to sub-path effect
* **Audio:** Fix audio mute state on project load
* **Audio/Video:** Fix audio/video stretch
  * Now works properly for both audio and video
  * Stretch state is saved and loaded in projects
* **Null Object:** New 'crosshair' type
* **Path Operators:** Fixed wrong Op order
* **Graph:** Support Ctrl+Shift zoom

This release (re)introduces experimental macOS support.

* A bunch of bug fixes
* A bunch of UI fixes
* GPU fixes
* Multi-Touch support
  * Pan (Slide two fingers, alt modifier to zoom)
  * Zoom in or out (Pinch with two fingers)
  * Smart Zoom (Double-tap with two fingers)
* Audio workarounds

Since this port is experimental we do not offer any binaries yet.

---

See Beta 1 [release notes](https://friction.graphics/releases/friction-100-beta1.html) for more information.