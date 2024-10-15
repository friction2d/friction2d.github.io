---
title: "Friction 1.0.0-beta.1"
layout: post
lead: "Introducing Friction 1.0 beta 1. This version includes several new features and many UI/UX improvements."
image: "/assets/screenshots/100/friction-100b1-screenshot.png"
categories: releases
---

After over a year of development, Friction has soon reached a significant milestone: version 1.0.

## Changes

All features planned for version 1.0 are now available for testing.

**Warning!** Project files created/saved in this version cannot be opened in older versions of Friction. Always back up your work and avoid using beta versions for production projects.

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

### Easing support

Easing has been traditionally restricted to the expression editor *(includes a dedicated easing tab)*, requiring advanced user knowledge. We've simplified this by introducing user-friendly easing options in the timeline and graph. Simply select your keyframes and choose the desired easing option.

### New Theme/Style (UI/UX)

A lot of work has gone into the UI/UX in this version, more information will be added before final release.

### HiDPI (Display Scaling)

Friction now has improved HiDPI *(Display Scaling)* support on Windows.

Linux support is considered more or less complete. Some icons on Windows may have a small offset when scaling, this will be resolved at some point before final release.

### Split Clip

Friction now offers split clip functionality. Quickly split clips using the shortcut `K` on the timeline or by right-clicking on a clip or the timeline scrollbar.

<video width="100%" controls src="/assets/videos/100/friction-split-clip.mp4" title="Split action in use"></video>

*UI changed after this video was made*

### Markers

Friction now includes basic marker support for the timeline. Quickly add markers using the shortcut `M` or by right-clicking on the timeline scrollbar.

Note: If a marker already exists it will be removed. Clear all markers is available in the timeline scrollbar context menu.

<video width="100%" controls src="/assets/videos/100/friction-markers.mp4" title="Markers in use"></video>

*UI changed after this video was made*

### Frame In/Out

Friction now supports setting frame in and out points on the timeline. Use the shortcuts `I` for in and `O` for out, or access these options through the timeline scrollbar context menu.

Note: If a in/out already exists it will be removed. Clear in/out is available in the timeline scrollbar context menu.

<video width="100%" controls src="/assets/videos/100/friction-frame-inout.mp4" title="Frame in/out in use"></video>

*UI have changed after this video was made*

### Command Palette

The command palette (`Ctrl+Space`) is a new major feature, improving the UX. It works similar to other applications, giving you easy access to the most common functions in Friction.

More information will be added before final release.

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

Note: Events only work for inline SVG's.

*This is an experimental feature.*

### Optimize SVG

Friction can now export optimized SVG's, powered by [SVGO](https://svgo.dev). Enable the "Optimized for Web" checkbox on export.

This feature require `SVGO`, included with Windows installer *(optional)*. Also available as a separate download.

More information will be added before final release.

### Adjust scene to first clip

Friction now support adjusting the scene properties to the first clip added.

A question dialog will open on the first clip added if it differs from the project and ask what to do. You can configure it to never, always and ask.

<video width="100%" controls src="/assets/videos/100/friction-adjust-to-first-clip.mp4" title="Adjust scene to first clip in use"></video>

*UI have changed after this video was made*

### Portable Mode

Windows and Linux portable now stores configuration in the same folder as Friction, offering "true" portable mode.

## Known Issues

Friction is currently in active development, and as such, you may encounter issues or missing features. Please note the following:

### SVG Gradients

There may be limitations in importing SVG gradients.

### Shader Effects

Shader effects are still in an experimental phase and may have limitations.

### GPU Accelerated Path Support

Radeon GPUs may experience compatibility issues with GPU-accelerated path support.

### Flickering

Some projects using GPUs might exhibit flickering during playback or video export, particularly when opacity is involved.

For a more comprehensive list of known issues and ongoing development, please refer to our [issue tracker](https://github.com/friction2d/friction/issues).
