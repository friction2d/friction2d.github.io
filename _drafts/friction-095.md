---
title: "Friction 0.9.5 released"
layout: post
categories: releases
release: 0.9.5
windows_setup: "setup-win64.exe"
windows_portable: "win64.7z"
windows_winget: "Friction.Friction"
linux_portable: "linux-x86_64.tar.xz"
linux_appimage: "x86_64.AppImage"
vfxplatform: "1.x86_64.rpm"
ubuntu_jammy: "ubuntu22.04.deb"
ubuntu_lunar: "ubuntu23.04.deb"
ubuntu_mantic: "ubuntu23.10.deb"
download_notes: true
---

# Friction 0.9.5

Introducing Friction 0.9.5. This release includes several fixes and some new features.

<img style="width: 100%;" src="/assets/screenshots/friction-095-timeline-window.jpg" alt="Screenshot">

## Changes

Changes since 0.9.4.

### UI

* Fixed several HiDPI (scaling) issues
* Fixed "Fit to canvas" UI update
* New about dialog
  * Includes licenses for bundled software and some additional docs
* Render queue
  * UI fixes
  * Added play button
  * Added clear button
  * Added new button
  * Instance state bugfix
* Timeline
  * UI fixes
  * Improved handle and ticks
  * Added new shortcut for "play from first frame" (SHIFT+SPACE)
  * Added prev/next keyframe buttons (for selected objects)
* Added render button in toolbar
  * Will open queue and add a new job if none exists
* Various minor UI tweaks
* Updated some icons

### Auto save/backup

Friction now features auto save and backup of projects.

* Support backup on save (see general in preferences)
  * On each save create a backup file in folder
* Added auto save option (see general in preferences)
  * Will auto save project after X time, should be combined with backup on save
  * Note that some actions/changes in Friction will not trigger document changed, this will be worked on for the next release

### Scene dialog

The scene dialog now support resolution and frame rate presets.

* Friction include a small set of default resolutions and fps
* Friction will remember new resolutions and fps for easy access later
* The presets can be configured in preferences

### Multi-window mode

Friction now features initial multi-window support.

* The timeline can run in it's own window (View => Timeline Window)
* The render queue can run in it's own window (View => Queue Window)

### Linux

* New universal binaries for Linux (vfxplatform CY2019+ compatible)
  1. Portable tarball
  2. RPM package
  3. AppImage
* Force static library on Linux (no more libfrictioncore.so)
* Skia can now be built against system libraries on Linux (recommended)
  * Add `-DUSE_SKIA_SYSTEM_LIBS=ON`
  * Requires expat, freetype2, libjpeg, libpng, libwebpmux, libwebpdemux, zlib, icu-i18n, harfbuzz
* Added Ubuntu 23.10 package

### Windows

* Friction can be installed through winget (Windows Package Manager)
* Convert shaders if needed, fixes Intel GPU issues on Windows

### Security

* Skia: fix for CVE-2023-4863

### Other

* Bundle expression presets in-app
* Preferences: added interface scaling options
* Preferences: added raster effects CPU/GPU option
  * Select if included raster effects should prefer CPU or GPU

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.4...v0.9.5).

## Known Issues

* Friction is beta quality software, expect issues and missing/broken features
* CSS style sheets are not supported when importing an SVG
  * SVG's from Adobe Illustrator (and others?) may have issues due to this
  * In some circumstances this might result in an invalid undo state after import
* SVG gradients may not import correctly

And more, see our [issue tracker](https://github.com/friction2d/friction/issues) for more information.

## Support

* If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.
* For general discussion, feature requests etc use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

For other inquiries use support at friction dot graphics.

## System Requirements

### Hardware

* Minimum 4GB RAM (16GB+ recommended)
* Minimum AVX compatible dual core CPU (Modern quad core or better recommended)
* OpenGL 3.3 compatible GPU and driver (Intel UHD Graphics 620 or better recommended)
* Working audio device

### Software

* Windows 10/11 x64
  * Microsoft Visual C++ Redistributable 2017 or higher is needed on Windows 10
    * In most cases this is already installed, if not you can download it [here](https://aka.ms/vs/17/release/vc_redist.x64.exe)
* Ubuntu 22.04/23.04/23.10 (X11 x86_64)
* Linux X11 x86_64 (vfxplatform CY2019+)
  * glibc 2.17+
  * libgcc 4.8.5+
  * pulseaudio
