---
title: "Friction 1.0.0-rc.2"
layout: post
lead: "Introducing the second release candidate for Friction 1.0.0."
image: "/assets/screenshots/100/friction-100rc2-screenshot.png"
categories: releases
release: 1.0.0-rc.2
windows_setup: "setup-win64.exe"
windows_portable: "windows-x64.7z"
linux_portable: "linux-x86_64.tar.xz"
linux_appimage: "x86_64.AppImage"
mac_intel_dmg: "x86_64.dmg"
mac_arm_dmg: "arm64.dmg"
download_active: false
---

This release includes several UI/UX changes and fixes. This was supposed to be the final version, but due to the amount of changes we need another release candidate.

Please test and give use feedback.

## Changes since RC 1

### UI/UX

* Added (horizontal) zoom button(s) in timeline/graph
* Remember (and store) last used fill/stroke
  * Improves the drawing UX
* Clear selection if right-click in draw/circle/rectangle mode
* Added restore default fill/stroke in help menu
* Added restore default UI in help menu
* Set white as default fill color
* Adjust default fill/stroke to background on new scene (avoid same color)
* Rewind/Forward in quarters can be triggered with `Shift`+`Alt`+`left/right`
* Update scene after zoom in/out actions
* Icon updates
* Support TAB to focus from/to X/Y value sliders
* Undo fixes
* Set cursor to end when focus on text input
* Added lock/unlock toolbars option in view menu
* Remember last used font family, size and style
  * Improves the text tool UX
* Refactored align widget, no visible changes
* Refactored font widget, no visible changes
* Major changes to the tools and toolbar UI, see below:

### ToolBox (toolbars)

Refactored several toolbars, merged into "ToolBox".

This release introduces a new toolbar for easy access to common properties. This includes transforms and related properties for item selected. 

The new toolbar also includes sub tools (node/draw mode) previous located in the tool selector toolbar.

The color picker indicator has also been moved to this toolbar.

![ToolBox Screenshot 1](/assets/screenshots/100/friction-100rc2-toolbox-01.png)
![ToolBox Screenshot 2](/assets/screenshots/100/friction-100rc2-toolbox-02.png)
![ToolBox Screenshot 3](/assets/screenshots/100/friction-100rc2-toolbox-03.png)
![ToolBox Screenshot 4](/assets/screenshots/100/friction-100rc2-toolbox-04.png)

More toolbar related features are planned for v1.1.

### SVG

* **Import**: Support paste SVG from clipboard (`Shift`+`Ctrl/Cmd`+`v`)
* **Export**: Added `DstOut` masking support
* **Export**: Added `mix-blend-mode` (blend modes) support

### Renderer

* PNG images now has proper unassociated alpha (unpremultiplied)
  * Now converts from premultiplied
* TIFF images now has proper associated alpha (premultiplied)
  * Tag fix, the alpha was always premultiplied
* Trim output path

### Windows

* UI font fixes

### macOS

* Apple Silicon native support

### Linux

* Fixed XDG arguments bug in AppImage
* Disabled fullscreen on Wayland

### SDK

* Updated to Qt 5.15.17 with KDE/custom patches
  * Qt 5.15.13 is now the minimum supported version
* Updated to FFmpeg 4.2.11 with custom patches

### Checksums

```
N/A
```

## Support

* See our [community](/community.html) page for more information
* See our [download](/download.html#requirements) page for system requirements

---

* See RC 1 [release notes](https://friction.graphics/releases/friction-100-rc1.html) for more information regarding changes for v1.0
* See Beta 2 [release notes](https://friction.graphics/releases/friction-100-beta2.html) for more information regarding changes for v1.0
* See Beta 1 [release notes](https://friction.graphics/releases/friction-100-beta1.html) for more information regarding changes for v1.0
