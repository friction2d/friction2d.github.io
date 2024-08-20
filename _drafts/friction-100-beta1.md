---
title: "Friction 1.0.0-beta1"
layout: post
lead: "Introducing the first beta release for Friction 1.0. This version includes several new features and UI/UX improvements."
image: "/assets/screenshots/100/friction-100b1-screenshot.png"
categories: releases
---

* table of contents
{:toc}

After over a year of development, Friction has reached a significant milestone: version 1.0.

Through multiple 0.9 series releases, we've significantly enhanced stability. With this version, we've achieved a solid foundation, delivering the basic features expected from an animation/motion graphics application.

## Changes

The majority of key features planned for version 1.0 are now available for testing.

**Warning!** *Project files created in this beta version cannot be opened in older versions of Friction. File formats may change unexpectedly. Always back up your work and avoid using beta versions for production projects.*

* [Easing support on timeline and graph](#easing-support)
* [New Theme](#new-theme)
  * New color palette and style
  * Improved UX
* [HiDPI (Display Scaling) fixes](#hidpi-display-scaling)
* [Support for Split Clip](#split-clip) (`K`)
* [Support for Markers](#markers) (`M`)
* [Support for Frame In/Out](#frame-inout) (`I`/`O`)
* [Support for Command Palette](#command-palette) (`Ctrl+Space`)
* [Support for interactive SVG transforms on export](#interactive-svg-transforms)
* [Support for optimized SVG on export](#optimize-svg)
* [Support adjust scene to first clip added](#adjust-scene-to-first-clip)
* [True Portable Mode](#portable-mode)
* Proper support for timecodes in timeline
* Effects are now available from the main toolbar
* Support enable/disable actions in the main toolbar
* Remember last import directory
  * This changes the behavior from previous versions, as they always used the project file directory as import directory. Old behavior can be enabled in preferences
* Changed shortcut for 'Invert Selection' (`Alt+A`)

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.6.1...v1.0.0-beta1).

### Easing support

Easing has been traditionally restricted to the expression editor *(includes a dedicated easing tab)*, requiring advanced user knowledge. We've simplified this by introducing user-friendly easing options in the timeline and graph. Simply select your keyframes and choose the desired easing option.

...

### New Theme

...

### HiDPI (Display Scaling)

Friction now has improved HiDPI *(Display Scaling)* support on Windows.

Linux support is considered more or less complete. Some icons on Windows may have a small offset when scaling, this will be resolved at some point before final release.

* **Note** *that these changes are for the UI, the viewer overlay may still need fixes for HiDPI*
* **Note** *that Interface Scaling in preferences has now been disabled. Friction will adapt to the desktop as much as possible and will in any case be better than the previous user override that only worked on some parts of the UI*

### Split Clip

Friction now offers split clip functionality. Quickly split clips using the shortcut `K` on the timeline or by right-clicking on a clip or the timeline scrollbar.

**New video required due to changes in UI:**
<video width="100%" controls src="/assets/videos/100/friction-split-clip.mp4" title="Split action in use"></video>

### Markers

Friction now includes basic marker support for the timeline. Quickly add markers using the shortcut `M` or by right-clicking on the timeline scrollbar.

*Note: If a marker already exists it will be removed. Clear all markers is available in the timeline scrollbar context menu.*

**New video required due to changes in UI:**
<video width="100%" controls src="/assets/videos/100/friction-markers.mp4" title="Markers in use"></video>

### Frame In/Out

Friction now supports setting frame in and out points on the timeline. Use the shortcuts `I` for in and `O` for out, or access these options through the timeline scrollbar context menu.

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

**Note:** *Events only work for inline SVG's.*

**New video required due to changes in UI:**

### Optimize SVG

Friction can now export optimized SVG's, powered by [SVGO](https://svgo.dev). Enable the `Optimized for Web` checkbox on export.

**Note:** *Only available in release binaries.*

### Adjust scene to first clip

Friction now support adjusting the scene properties to the first clip added.

A question dialog will open on the first clip added if it differs from the project and ask what to do. You can configure it to never, always and ask.

**New video required due to changes in UI:**
<video width="100%" controls src="/assets/videos/100/friction-adjust-to-first-clip.mp4" title="Adjust scene to first clip in use"></video>

### Portable Mode

...

## Known Issues

Friction is in early development, expect issues and missing features.

* SVG gradients may not import correctly
* There are still some minor issues with viewer interacts using HiDPI
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
