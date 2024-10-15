---
title: "Friction 1.0.0-beta.1"
layout: post
lead: "Introducing Friction 1.0 public beta. This version includes several new features and many UI/UX improvements."
image: "/assets/screenshots/100/friction-100b1-screenshot.png"
categories: releases
release: 1.0.0-beta.1
windows_setup: "setup-win64.exe"
windows_portable: "windows-x64.7z"
linux_portable: "linux-x86_64.tar.xz"
linux_appimage: "x86_64.AppImage"
linux_rpm: "1.x86_64.rpm"
download_active: true
---

After over a year of development, Friction has reached a significant milestone: version 1.0 🥳

All features planned for version 1.0 are now considered usable. Please test and give us feedback before the final release.

**Warning!** Project files created/saved in this version cannot be opened in older versions of Friction. Always back up your work and avoid using beta versions for production projects.

* Color Toolbar
* Easing support on timeline and graph
* New Theme/Style with many UI/UX changes
* HiDPI (Display Scaling) fixes
* Support for Split Clip
* Support for Markers
* Support for Frame In/Out
* Support for Command Palette
* Experimental support for interactive SVG transforms
* Support for optimized SVG on export
* Support adjust scene to first clip added
* New Portable Mode
* Proper support for timecodes in timeline

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.6.1...v1.0.0-beta.1).

## Color Toolbar

Friction now has a new color toolbar with easy access to fill, stroke and background color properties.

<video width="100%" controls src="/assets/videos/100/friction-color-toolbar.mp4" title="Color Toolbar in use"></video>

## Easing support

Easing has been traditionally restricted to the expression editor *(includes a dedicated easing tab)*, requiring advanced user knowledge. We've simplified this by introducing user-friendly easing options in the timeline and graph. Simply select your keyframes and choose the desired easing option.

![Screenshot of graph with easing options](/assets/screenshots/100/friction-100b1-graph-easing.jpg)

## New Theme/Style (UI/UX)

A lot of work has gone into the UI/UX in this version, more information will be added before final release.

## HiDPI (Display Scaling)

Friction now has improved HiDPI *(Display Scaling)* support on Windows.

Linux support is considered more or less complete. Some icons on Windows may have a small offset when scaling, this will be resolved at some point before final release.

## Split Clip

Friction now offers split clip functionality. Quickly split clips using the shortcut `K` on the timeline or by right-clicking on a clip or the timeline scrollbar.

<video width="100%" controls src="/assets/videos/100/friction-split-clip.mp4" title="Split action in use"></video>

## Markers

Friction now includes basic marker support for the timeline. Quickly add markers using the shortcut `M` or by right-clicking on the timeline scrollbar.

Note: If a marker already exists it will be removed. Clear all markers is available in the timeline scrollbar context menu.

<video width="100%" controls src="/assets/videos/100/friction-markers.mp4" title="Markers in use"></video>

## Frame In/Out

Friction now supports setting frame in and out points on the timeline. Use the shortcuts `I` for in and `O` for out, or access these options through the timeline scrollbar context menu.

Note: If a in/out already exists it will be removed. Clear in/out is available in the timeline scrollbar context menu.

<video width="100%" controls src="/assets/videos/100/friction-frame-inout.mp4" title="Frame in/out in use"></video>

## Command Palette

The command palette (`Ctrl+Space`) is a new major feature, improving the UX. It works similar to other applications, giving you easy access to the most common functions in Friction.

More information will be added before final release.

## Interactive SVG transforms

Friction can now export SVG transforms with `begin` and `end` events, this makes it possible to start and/or stop transforms based on user input.

Can be enabled on transforms with the new `SVG Properties`, the properties include `begin event` and `end event`.

Supported events:

* `click`
* `dblclick`
* `mousedown`
* `mouseenter`
* `mouseleave`
* `mousemove`
* `mouseout`
* `mouseover`
* `mouseup`

Note: Events only work for inline SVG's.

*This is an experimental feature.*

## Optimize SVG

Friction can now export optimized SVG's, powered by [SVGO](https://svgo.dev). Enable the "Optimized for Web" checkbox on export.

This feature require `SVGO`, included with Windows installer *(optional)*. Also available as a separate download.

More information will be added before final release.

![Screenshot of export dialog](/assets/screenshots/100/friction-100b1-export-svg-dialog.png)

## Adjust scene to first clip

Friction now support adjusting the scene properties to the first clip added.

A question dialog will open on the first clip added if it differs from the project and ask what to do. You can configure it to never, always and ask.

![Screenshot of adjust dialog](/assets/screenshots/100/friction-100b1-adjust-scene-to-clip.png)

## Portable Mode

Windows and Linux portable now stores configuration in the same folder as Friction, offering "true" portable mode.

## Known Issues

Friction is currently in active development, and as such, you may encounter issues or missing features. Please note the following:

* **SVG Gradients:** There may be limitations in importing SVG gradients.
* **HiDPI:** While most HiDPI issues will be addressed in version 1.0, some still persist.
* **Shader Effects:** Shader effects are still in an experimental phase and may have limitations.
* **GPU Accelerated Path Support:** Radeon GPUs may experience compatibility issues with GPU-accelerated path support.
* **Flickering:** Some projects using GPUs might exhibit flickering during playback or video export, particularly when opacity is involved.

For a more comprehensive list of known issues and ongoing development, please refer to our [issue tracker](https://github.com/friction2d/friction/issues).

## Support

* If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.
* For general discussion use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

We are also on [Codeberg](https://codeberg.org/friction/friction).

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
