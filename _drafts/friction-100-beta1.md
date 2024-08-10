---
title: "Friction 1.0.0-beta1"
layout: post
lead: "Introducing the first beta release for Friction v1.0. This version includes several new features and UI/UX improvements."
image: "/assets/screenshots/100/friction-100b1-screenshot.png"
categories: releases
---

* table of contents
{:toc}

## Changes

First batch of features for v1.0 are now ready for testing and feedback.

**Note:** *Some features may need further development before final release.*

**Warning!** *Project files saved in this version are not compatible with older versions of Friction. Beta versions may change the file format at any time, backup your work and don't use in production.*

* [New Theme](#new-theme) 
* [Support for Split Clip](#split-clip) (`K`)
* [Support for Markers](#markers) (`M`)
* [Support for Frame In](#frame-inout) (`I`)
* [Support for Frame Out](#frame-inout) (`O`)
* [Support for Command Palette](#command-palette) (`Ctrl+Space`)
* [Support for interactive SVG transforms on export](#interactive-svg-transforms)
* [Support for optimized SVG on export](#optimize-svg)
* [Support adjust scene to first clip added](#adjust-scene-to-first-clip)
* Proper support for timecodes in timeline
* Added global action 'Add Key(s)' with shortcut (`Insert`)
* Effects are now available from the main toolbar
* Support enable/disable actions in the main toolbar
* Remember last import directory
  * This changes the behavior from previous versions, as they always used the project file directory as import directory. Old behavior can be enabled in preferences
* Changed shortcut for 'Invert Selection' (`Alt+A`)

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.6.1...v1.0.0-beta1).

### New Theme

*work-in-progress*

### Split Clip

Friction now supports split clip. This action is available through the shortcut `K` on the timeline or through the context menu on the clip or the timeline scrollbar.

<video width="100%" controls src="/assets/videos/100/friction-split-clip.mp4" title="Split action in use"></video>

*Only video clips are supported, this can be expanded to support other clips in a future release.*

### Markers

Friction now has initial support for markers on the timeline. This action is available through the shortcut `M` on the timline and through the timeline scrollbar context menu.

*Note: If a marker already exists it will be removed. Clear all markers is available in the timeline scrollbar context menu.*

**New video required due to changes in UI:**
<video width="100%" controls src="/assets/videos/100/friction-markers.mp4" title="Markers in use"></video>

### Frame In/Out

Friction now has initial support for frame in/out on the timeline. This action is available through the shortcut `I` for in and shortcut `O` for out. The actions are also available through the timeline scrollbar context menu.

*Note: If a in/out already exists it will be removed. Clear in/out is available in the timeline scrollbar context menu.*

**New video required due to changes in UI:**
<video width="100%" controls src="/assets/videos/100/friction-frame-inout.mp4" title="Frame in/out in use"></video>


### Command Palette

...

### Interactive SVG transforms

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

| Tutorial | Result |
| -------- | ------ |
| <video width="100%" controls src="/assets/videos/100/friction-interactive-svg.mp4" title="How to make an interactive SVG"></video> | <svg style="width: 100%; border-radius: .25em;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 1080"><g transform="translate(960.4 532.724)"><g transform="translate(0 0)"><g transform="rotate(0)"><g><animateTransform keySplines="0 0 1 1;0 0 1 1;0 0 1 1" dur="1s" attributeName="transform" keyTimes="0;0;0.5;1" repeatCount="indefinite" begin="mouseenter" calcMode="spline" end="mouseleave" values="1 1;1 1;1.2 1;1 1" type="scale"/><g><animateTransform keySplines="0 0 1 1;0 0 1 1;0 0 1 1" dur="1s" attributeName="transform" keyTimes="0;0;0.5;1" repeatCount="indefinite" begin="mouseenter" calcMode="spline" end="mouseleave" values="1 1;1 1;1 1.2;1 1" type="scale"/><g opacity="1" transform="skewX(0) skewY(0) translate(-960.4 -532.724)"><rect rx="0" width="2221.29" stroke="none" y="0" height="1264.15" ry="0" x="0" fill="rgba(0, 0, 58, 1)" stroke-width="10" opacity="1" transform="translate(5 5) translate(-150.246 -99.3508) rotate(0) scale(1 1) skewX(0) skewY(0) translate(-5 -5)"/><ellipse rx="83.0312" cy="0" stroke="rgba(0, 102, 255, 1)" cx="0" ry="83.0312" fill="none" stroke-width="10" opacity="1" transform="translate(0 0) translate(222.979 222.706) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)"/><ellipse rx="181.219" cy="0" stroke="rgba(0, 102, 255, 1)" cx="0" ry="181.219" fill="none" stroke-width="10" opacity="1" transform="translate(0 0) translate(235.019 719.337) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)"/><ellipse rx="181.219" cy="0" stroke="rgba(0, 102, 255, 1)" cx="0" ry="181.219" fill="none" stroke-width="10" opacity="1" transform="translate(0 0) translate(752.718 857.791) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)"/><ellipse rx="121.779" cy="0" stroke="rgba(0, 102, 255, 1)" cx="0" ry="121.779" fill="none" stroke-width="10" opacity="1" transform="translate(0 0) translate(701.55 123.38) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)"/><ellipse rx="172.511" cy="0" stroke="rgba(0, 102, 255, 1)" cx="0" ry="172.511" fill="none" stroke-width="10" opacity="1" transform="translate(0 0) translate(1288.48 171.538) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)"/><ellipse rx="79.4631" cy="0" stroke="rgba(0, 102, 255, 1)" cx="0" ry="79.4631" fill="none" stroke-width="10" opacity="1" transform="translate(0 0) translate(1255.37 598.941) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)"/><ellipse rx="232.229" cy="0" stroke="rgba(0, 102, 255, 1)" cx="0" ry="232.229" fill="none" stroke-width="10" opacity="1" transform="translate(0 0) translate(1631.6 863.811) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)"/></g></g></g></g></g></g><g transform="translate(0 0)"><g transform="translate(960 540)"><g transform="rotate(0)"><g><animateTransform keySplines="0 0 1 1;0 0 1 1;0 0 1 1" dur="1s" attributeName="transform" keyTimes="0;0;0.5;1" repeatCount="indefinite" begin="mouseenter" calcMode="spline" end="mouseleave" values="1 1;1 1;2 1;1 1" type="scale"/><g><animateTransform keySplines="0 0 1 1;0 0 1 1;0 0 1 1" dur="1s" attributeName="transform" keyTimes="0;0;0.5;1" repeatCount="indefinite" begin="mouseenter" calcMode="spline" end="mouseleave" values="1 1;1 1;1 2;1 1" type="scale"/><ellipse rx="247.47" cy="0" stroke="rgba(0, 102, 255, 1)" cx="0" ry="247.47" fill="rgba(0, 0, 0, 1)" stroke-width="10" opacity="1" transform="skewX(0) skewY(0) translate(0 0)"/></g></g></g></g></g></svg>

**Note:** *Events only work for inline SVG's.*

### Optimize SVG

Friction can now export optimized SVG's, powered by [SVGO](https://svgo.dev). Enable the `Optimized for Web` checkbox on export.

**Note:** *Only available in release binaries.*

### Adjust scene to first clip

Friction now support adjusting the scene properties to the first clip added.

A question dialog will open on the first clip added if it differs from the project and ask what to do. You can configure it to never, always and ask.

<video width="100%" controls src="/assets/videos/100/friction-adjust-to-first-clip.mp4" title="Adjust scene to first clip in use"></video>

## Known Issues

Friction is in early development, expect issues and missing features.

* SVG gradients may not import correctly
* There are still some issues with HiDPI
* Shader effects are still experimental
* GPU accelerated path support may not be properly supported on Radeon GPU's
* Flickering on some projects (GPUs) during playback/video export

And more, see our [issue tracker](https://github.com/friction2d/friction/issues) for more information.

## Support

* If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.
* For general discussion, feature requests etc use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

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
