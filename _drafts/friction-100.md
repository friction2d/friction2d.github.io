---
title: "Friction 1.0.0"
layout: post
lead: "Introducing Friction 1.0.0."
image: "/assets/screenshots/100/friction-100rc1-screenshot.png"
categories: releases
release: 1.0.0
windows_setup: "setup-win64.exe"
windows_portable: "windows-x64.7z"
linux_portable: "linux-x86_64.tar.xz"
linux_appimage: "x86_64.AppImage"
mac_intel_dmg: "x86_64.dmg"
mac_arm_dmg: "arm64.dmg"
download_active: true
---

Lorem ipsum.

* table of contents
{:toc}

## Changes since 1.0.0 RC 3

* Added persistent menu to gizmos/snap/grid buttons
* Added persistent menu to 'view'
* Fixed regression in color animator button (would not update color if changed)
* Fixed alpha in WebM video export
* Removed GLX support on Linux
* Refactored SVG gradient support
  * Fixed gradient points on SVG import
  * Fixed gradient alpha on SVG import
* Refactored text support on SVG import
* Fixed parent effect
  * Changes in effect may introduce different output in older projects
* Added a setup wizard
  * Will guide you through setting up Friction for optimal usage
  * Introduces "library path", recommended path is HOME/Documents/Friction
* Official support for Flatpak on Linux
* Offline documentation
* Refactored SVG clipboard (paste) support
  * Now supports paste from Inkscape on macOS
* Fixed renderer UI settings bug when using "unsupported" formats/codecs
* Added support for HiDPI rounding in the UI
  * Needed when using font scaling, fixes UI artifacts on some configurations
  * To enable rounding uncheck "HiDPI PassThrough" *(default)* in settings or during setup wizard

## Changes since 0.9.6.1

* 1.0.0 Beta 1 [release notes](https://friction.graphics/releases/friction-100-beta1.html)
* 1.0.0 Beta 2 [release notes](https://friction.graphics/releases/friction-100-beta2.html)
* 1.0.0 RC 1 [release notes](https://friction.graphics/releases/friction-100-rc1.html)
* 1.0.0 RC 2 [release notes](https://friction.graphics/releases/friction-100-rc2.html)
* 1.0.0 RC 3 [release notes](https://friction.graphics/releases/friction-100-rc3.html)
