---
title: "Friction 0.9.6"
layout: post
categories: releases
release: 0.9.6
---

# Friction 0.9.6

Draft for Friction 0.9.6 release.

<img style="width: 100%; border-radius: .25em;" src="/assets/hero-poster.jpg" alt="Screenshot">

**[ui has changed since this screenshot, update!]**

## UI/UX

* Improved viewer and timeline UI
* Don't wrap item labels
* Improved "Fill and Stroke" widgets
* New UI layout handler
* Render Queue: Fix missing labels (-none-) on project load
* Added shortcut for bookmark color (B)
* Added shortcut for Pivot local/global (P)
* Don't allow group link to be dropped on it's target
* Render queue state fixes
* Various minor tweaks
* Updated some icons

## New UI layout

This version includes a new layout handler. This makes the UI a bit more flexible for different workflows.

**[ui has changed since this screenshot(s), update!]**

<div class="blocks">
<div class="block">
<img src="/assets/screenshots/096/friction-096-common.jpg" alt="Screenshot">
<p>The default layout is still the same, the only difference compared to 0.9.5 is the arrow buttons above some of the widgets.</p>
</div>
<div class="block">
<img src="/assets/screenshots/096/friction-uilayout-containers.jpg" alt="Screenshot">
<p>The layout has four containers where you can freely move widgets (using the arrows on top of the widget). If the widget is in the RIGHT container and you press the left arrow the widget will move to the TOP container, if you instead press the right arrow while the widget is in the RIGHT container your widget will move to the LEFT container etc etc. </p>
</div>
<div class="block">
<img src="/assets/screenshots/096/friction-uilayout-example-01.jpg" alt="Screenshot">
<p>Example layout #1</p>
</div>
<div class="block">
<img src="/assets/screenshots/096/friction-uilayout-example-02.jpg" alt="Screenshot">
<p>Example layout #2</p>
</div>
<div class="block">
<img src="/assets/screenshots/096/friction-uilayout-example-03.jpg" alt="Screenshot">
<p>Example layout #2</p>
</div>
<div class="block">
<img src="/assets/screenshots/096/friction-uilayout-example-04.jpg" alt="Screenshot">
<p>Example layout #4</p>
</div>
</div>

## Viewer and Timeline

Improved viewer and timeline UI. **[add more info and screenshot]**

## Fill and Stroke

The color widgets has some minor UI cleanup. Most of the changes was in the backend, cleaning up the code etc.

<div class="blocks">
<div class="block"><img src="/assets/screenshots/096/friction-fillstroke-01.jpg" alt="Screenshot"></div>
<div class="block"><img src="/assets/screenshots/096/friction-fillstroke-02.jpg" alt="Screenshot"></div>
</div>

## Renderer

Added support for profiles on selected codecs.

<div class="blocks">
<div class="block"><img src="/assets/screenshots/096/friction-video-codec-profile.jpg" alt="Screenshot"></div>
</div>

* H264 *(baseline/main/high)*
* ProRes *(proxy/lt/standard/hq/4444/xq)*
* AV1 *(main/high/professional)*
* VP9 *(0/1/2/3)*
* MPEG4 *(simple/core/main)*
* VC1 *(simple/main/complex/advanced)*

## Effects

* Effects can now be renamed

## Windows

* Support window title bar dark/light theme
* Support for Windows N
* Remove dependency on Windows Media Foundation

## Linux

* Removed Ubuntu Lunar (23.04) native package
* Added Ubuntu Noble (24.04) native package
* Removed Flatpak package, will submit to flathub at some point
* Fixed broken RPM package

## Other

* Major improvements to the build process
* Started moving GUI code to frictionui library
* Moved more code to the frictioncore library
* Removed a lot of unused code
* Upgraded from Qt 5.12.12 to Qt 5.15.13
  * Should fix several UI issues on Windows

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.5...main). **[update url before release]**

## Known Issues

* Friction is beta quality software, expect issues and missing/broken features
* CSS style sheets are not supported when importing an SVG
  * SVG's from Adobe Illustrator (and others?) may have issues due to this
  * In some circumstances this might result in an invalid undo state after import
* SVG gradients may not import correctly
  * In general gradients needs some work
* There are still some minor issues with HiDPI
* Shader effects are still experimental and may introduce issues

And more, see our [issue tracker](https://github.com/friction2d/friction/issues) for more information.

## Support

* If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.
* For general discussion, feature requests etc use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

For other inquiries use support at friction dot graphics.

## System Requirements

### Minimum hardware

* 4GB RAM available
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
  * AMD Ryzen/Threadripper 1000 series or newer
* GPU
  * NVIDIA GeForce GTX 1050 or newer
  * AMD Radeon RX 560 or newer
  * Intel UHD Graphics 620 or newer

### Supported systems

* Microsoft Windows (N) 10/11
  * Visual C++ [Redistributable](https://aka.ms/vs/17/release/vc_redist.x64.exe) 2017 or higher is needed on Windows 10
* Ubuntu 22.04/23.10/24.04 and compatible
* Red Hat Enterprise Linux 7.9/8.x/9.x and compatible
* Generic Linux (glibc 2.17+/libgcc 4.8.5+)

#### Linux notes

We have a universal Linux build recommended for most users. It's provided as a portable tarball, RPM and AppImage.

* They are all identical, only the package format differs
* Third-party dependencies are kept in sync with the Windows build, only the compilers differ

Ubuntu packages are built against system dependencies and differs from our universal build.

Native Wayland is currently not supported.
