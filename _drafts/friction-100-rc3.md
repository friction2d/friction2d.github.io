---
title: "Friction 1.0.0-rc.3"
layout: post
lead: "Introducing the third release candidate for Friction 1.0.0."
image: "/assets/screenshots/100/friction-100rc3-screenshot.png"
categories: releases
release: 1.0.0-rc.3
windows_setup: "setup-win64.exe"
windows_portable: "windows-x64.7z"
linux_portable: "linux-x86_64.tar.xz"
linux_appimage: "x86_64.AppImage"
mac_dmg: ".dmg"
download_active: false
comments: ""
---

This new release candidate introduces significant user experience (UX) improvements and several important stability fixes.

Your feedback is essential. Please test this version and let us know what you think.

* Complete changelog can be found on [GitHub](https://github.com/friction2d/friction/compare/v1.0.0-rc.2...v1.0.0-rc.3)
* Additional downloads can be found on [GitHub](https://github.com/friction2d/friction/releases/tag/v1.0.0-rc.3)

## Changes

### UI/UX

* Fixed a clamping issue in the resolution selector and added more default resolutions
* Added Undo/Redo support for Marker/In/Out changes
* Null objects are now only drawn when visible
  * *Note: This currently does not apply if the object is in a group/layer. A fix is planned for a future update*
* Added "Bookmark Color" to all relevant menus
* Fixed a bug where deleted bookmark colors were not properly removed from the project
* The timebar is now placed at the first frame by default when creating a new scene
* Added a memory (RAM) usage display to the status bar
* Corrected frame-to-seconds calculations in the New/Edit Scene dialog
* Improved timeline and graph zooming behavior
* The timeline range now automatically fits to the scene on load

### Transform Interacts

TODO

### Nodes

* Added new "Remove Node" action
* Added new "Split Nodes" action (pending PR merge)
* Added new "Set First Node" action (pending PR merge)
* Added new "Reverse Nodes Order" action (pending PR merge)

### SVG

* Ensured `rx` and `ry` values for circles are always positive on export
* Added optional support for SVG 1.1 compatible colors (see export dialog)

### Effects

* Parent effect now supports influence (pending PR merge)
* Improved stability of (GLSL) shaders
* Fixed a crash tied to visibility range and motion blur

### Renderer

Added proper support for constant frame rate (CFR) in exported videos. This significantly improves compatibility with NLEs (video editors) like Kdenlive.

### macOS

* Fixed a crash during render by correctly reading the app's memory (RAM) usage
* Added support for Universal Binaries (Apple Silicon ARM64 & Intel x86_64)
* The minimum supported version is now macOS 11.0 (Big Sur)

macOS support is still experimental.

### Linux

Fixed missing/broken application icon in the XFCE desktop environment.

### SDK

Updated several third-party libraries to improve stability and address security.

## Support

* See our [community](/community.html) page for more information
* See our [download](/download.html#requirements) page for system requirements

---

* See RC 2 [release notes](https://friction.graphics/releases/friction-100-rc2.html) for more information regarding changes for v1.0
* See RC 1 [release notes](https://friction.graphics/releases/friction-100-rc1.html) for more information regarding changes for v1.0
* See Beta 2 [release notes](https://friction.graphics/releases/friction-100-beta2.html) for more information regarding changes for v1.0
* See Beta 1 [release notes](https://friction.graphics/releases/friction-100-beta1.html) for more information regarding changes for v1.0
