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

## Changes

### UI/UX

* New Theme/Style with many UI/UX changes
* New Color Toolbar
* Support for Split Clip
* Support for Markers
* Support for Frame In/Out
* Support for Command Palette
* Use Qt mouse cursors as default, fixes HiDPI issues
* Fixed font widget focus
* Fixed canvas nodes overlay on HiDPI
* Do not collapse docks if they have widgets
* New Color Pick Mode (refactored)
* Icon updates
* Proper support for timecodes in timeline
* Added "Fit to Canvas Width" action (Ctrl+9)
* Refactored toolbars with several new features
  * They are movable
  * Some actions can be added/removed
  * See context menu for each toolbar for various options
  * Show/Hide labels
* Scene settings dialog can now convert to/from frames/time
* Fixed inconsistent zoom behavior in graph
* Do not apply easing on smart paths in timeline
* Add in/out/marker actions in scene menu
* Support status bar message from timeline
* New 'crosshair' type for null objects
* Support Ctrl+Shift zoom in graph
* Value sliders now support uniform scaling if using the `Shift` modifier
  * `Shift` + `Enter` if adding numbers
* UI fix for text effect properties
* Restore UI state in timeline
* Updated splash screen
  * on Windows, been disabled on Linux and macOS
* Text tool will now open text editor if clicking on text box
* Restore UI visibility state for "Fill and Stroke"
  * You can show/hide the widget with the `F` key
* Added support for pivot alignment in align tool
  * Align to bounding box
  * Align to scene
  * Align all pivots to last selected object bounding box
  * Align all pivots to last selected object pivot
* Support adjust scene to first clip added
* Easing support on timeline and graph
* Various Undo/Redo fixes
* User defaults for new scene (override default values for new scene)
* Improved fill and stroke workflow
  * Last used fill/stroke color and stroke width is now stored for reuse
  * Restore last used fill/stroke on startup
  * New scene will adjust last used colors to background color (avoid identical colors)
  * Clear selection on right-click if in draw/circle/rectangle mode
* Improved HiDPI support on Windows
* Rewind / Fast Forward by quarters in timeline
  * `shift` + `alt` + `left`/`right`

### SVG

* Support for CSS blend modes (`mix-blend-mode`) on export
* Support for `DstOut` (inverted masking) on export
* Support paste SVG from clipboard (shift+ctrl+v)
* Experimental support for interactive SVG transforms
* Support for optimized SVG on export (requires SVGO)
* Support for `animateMotion` (follow path)
  * The 'follow path' effect can now be used for SVG animations
* Support Inkscape labels

### GPU/Audio/Video/Effects

* Support In/Out range in renderer
* **Effects:** Add offset parameter to sub-path effect
* **Audio:** Fixed audio mute state on project load
* **Audio/Video:** Fixed audio/video stretch
  * Now works properly for both audio and video
  * Stretch state is saved and loaded in projects
* **Path Operators:** Fixed wrong Op order
* **GPU:** Fixed a crash on some GPUs when forcing effects to CPU-only
* **Video:** Fixed fps detection on some video files
* **GPU:** Fixed shader `texture` usage (drop deprecated usage of `texture2D`)
  * Also adapted community shaders to work with the changes
  * **Remember to update your custom shaders before running Friction!**
* **GPU:** Support MSAA settings
  * Default is **4x**
  * Recommended is **16x** (or *0x*)
  * Intel GPUs should use **4x**

### Other

* Improved Portable Mode
* Upgraded SDK to Qt 5.15.16 with KDE Patch Collection

### macOS

This release introduces official (but still experimental) support for macOS.

* Testing and development happens on macOS 12 (Intel) and macOS 15 (Apple Silicon)
* We target latest macOS with backwards compatibility with macOS 12.7
* Multi-Touch support
  * Pan (Slide two fingers, alt modifier to zoom)
  * Zoom in or out (Pinch with two fingers)
  * Smart Zoom (Double-tap with two fingers)
* Gesture support in timeline
  * zoom (pinch-to-zoom) timeline range
  * scroll (swipe) timeline range

Note that there are some issues with the macOS version:

* Cache does not work properly, use 'clear cache' (cmd+r) if your changes does not apply
  * Or use our new "realtime" cache
* Some minor UI redraw glitches

### Linux

Several major changes to our Linux port in this version.

* Flatpak support *(not on flathub yet)*
* Initial XDG Portal support
* Wayland support
* Use EGL as default (GLX is deprecated)
* All binaries now support both X11 and native Wayland out-of-the-box
* Improved XDG (desktop) integration

### Documentation

We have documentation! Big thanks to Pablo Gil for doing the majority of work.

[https://friction.graphics/documentation](https://friction.graphics/documentation)

### Color Toolbar

Friction now has a new color toolbar with quick access to fill, stroke and background color properties.

<video width="100%" controls src="/assets/videos/100/friction-color-toolbar.mp4" title="Color Toolbar in use"></video>

### Easing support

Easing has been traditionally restricted to the expression editor *(has a dedicated easing tab)*, requiring advanced user knowledge. We've simplified this by introducing user-friendly easing options in the timeline and graph. Simply select your keyframes and choose the desired easing option.

![Screenshot of graph with easing options](/assets/screenshots/100/friction-100b1-graph-easing.jpg)

### Split Clip

Friction now offers split clip functionality. Quickly split clips using the shortcut `K` on the timeline or by right-clicking on a clip or the timeline scrollbar.

<video width="100%" controls src="/assets/videos/100/friction-split-clip.mp4" title="Split action in use"></video>

### Markers

Friction now includes basic marker support for the timeline. Quickly add markers using the shortcut `M` or by right-clicking on the timeline scrollbar.

Note: If a marker already exists it will be removed. Clear all markers is available in the timeline scrollbar context menu.

<video width="100%" controls src="/assets/videos/100/friction-markers.mp4" title="Markers in use"></video>

### Frame In/Out

Friction now supports setting frame in and out points on the timeline. Use the shortcuts `I` for in and `O` for out, or access these options through the timeline scrollbar context menu.

Note: If a in/out already exists it will be removed. Clear in/out is available in the timeline scrollbar context menu.

<video width="100%" controls src="/assets/videos/100/friction-frame-inout.mp4" title="Frame in/out in use"></video>

### Adjust scene to first clip

Friction now support adjusting the scene properties to the first clip added.

![Screenshot of adjust dialog](/assets/screenshots/100/friction-100b1-adjust-scene-to-clip.png)

### Command Palette

![Command Palette Screenshot](/assets/screenshots/100/friction-100b1-cmd-01.png)

The command palette (`Ctrl+Space`) is a new UX feature. It works similar to other applications, giving you quick access to most actions.

* `?` - List all actions.
* Press `Up` to access last used command(s)

![Command Palette Screenshot](/assets/screenshots/100/friction-100b1-cmd-02.png)

#### Special commands

![Command Palette Screenshot](/assets/screenshots/100/friction-100b1-cmd-03.png)

* `:TIME` - Move to `TIME` (`X`/`Xs`/`Xm`)
  * `:10` - Move to frame 10
  * `:10s` - Move to frame at 10 sec
  * `:10m` - Move to frame at 10 min
* `+/-TIME` - Move +/- `TIME` (`X`/`Xs`/`Xm`)
  * `-10` - Move to current frame - 10
  * `+10` - Move to current frame + 10
  * `+10s` - Move to current frame + 10 sec
  * `+10m` - Move to current frame + 10 min
* `rotate:` - Rotate selected by `double`
* `scale:` - Scale selected by `double`
* `move:` - Move selected by `X` x `Y`
* `marker:` - Add marker(s) at `TIME` (`X`/`Xs`/`Xm`) and optional `TITLE`
  * `marker:5` - Add marker at frame 5
  * `marker:10 foo bar` - Add marker at frame 10 with title "foo bar"
  * `marker:20,30,40,50` - Add marker at frame 20, 30, 40, 50
  * `marker:60,30s Foo,1m Bar` - Add marker at frame 60, at 30 sec with title "Foo", at 1 min with title "Bar"
* `in:` - Set frame In to `TIME` (`X`/`Xs`/`Xm`)
  * `in:10` - Set frame In at frame 10
  * `in:30s` - Set frame In at 30 sec
  * `in:1m` - Set frame In at 1 min
* `out:` - Set frame Out to `TIME` (`X`/`Xs`/`Xm`)
  * `out:10` - Set frame Out at frame 10
  * `out:30s` - Set frame Out at 30 sec
  * `out:1m` - Set frame Out at 1 min

Special commands can be batched with `&&`:

```
:10 && rotate:45 && +100 && rotate:0
```

*(Move to frame 10 and rotate selected to 45, move + 100 frames and rotate selected to 0)*

### Interactive SVG transforms

Friction can now export SVG transforms with `begin` and `end` events, this makes it possible to start and/or stop transforms based on user input.

Can be enabled on transforms with the new `SVG Properties`, the properties include `begin event` and `end event`.

![Screenshot SVG properties](/assets/screenshots/100/friction-100b1-svg-events.jpg)

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

**Note:** Events only work for inline SVG's. Interactive SVG is an experimental feature, further development is needed.

### Optimize SVG

Friction can now export optimized SVG's, powered by [SVGO](https://svgo.dev). Enable the "Optimized for Web" checkbox on export.

Only included with the Windows installer, available as a separate download:

* **Windows:** [Download](https://github.com/friction2d/friction/releases/download/v1.0.0-beta.1/friction-1.0.0-beta.1-svgo.zip) and copy `svgo-win.exe` where `friction.exe` is located.
* **Linux:** [Download](https://github.com/friction2d/friction/releases/download/v1.0.0-beta.1/friction-1.0.0-beta.1-svgo.zip) and copy `svgo-linux` where `friction` is located. Fallback is `svgo` from system path.

![Screenshot of export dialog](/assets/screenshots/100/friction-100b1-export-svg-dialog.png)

### Expressions

Several changes to the expression engine was introduced in this version. We got scene bindings and support for external JS functions/add-ons.

Expression Presets have been added to speed up workflows. They allow to load, save, rename, import, and export presets, which bundle the code written in Bindings, Scripts (Calculate), and Definitions.

* Editor: removed easing tab
* UI/Font fixes in editor
* Added `clamp` function
* Added `lerp` function
* Support external JS functions/add-ons
* Added scene bindings
  * `$scene.fps`
  * `$scene.width`
  * `$scene.height`
  * `$scene.rangeMin`
  * `$scene.rangeMax`
* Fixed crash on apply expression/export to SVG when using `$value` and `$frame`.
* Added Presets support, and includes:
  * Copy X
  * Copy Y
  * Orbit X
  * Orbit Y
  * Noise (function)
  * Oscillation
  * Rotation
  * Time
  * Track Object
  * Wave
  * Wiggle

### Non cached Preview

A new way of previewing scene animations have been added. instead of rendering into cache it just plays the canvas view, that's it, showing gizmos, selections, pivots, etc.

See `Menu` > `View` > `Preview Cache`.

**On macOS this is the recommended mode, this is due to an unresolved issue related to cache.**

## Examples

Examples of some of the new features in Friction.

### Interactive SVG

<svg viewBox="0 0 1920 1080" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g transform="translate(194.17 194.17)"><g transform="translate(1108.03 345.83)"><g><animateTransform attributeName="transform" begin="dblclick" type="rotate" keySplines="0 0 1 1;0 0 1 1" values="0;0;360" calcMode="spline" keyTimes="0;0;1" end="click" dur="2s" repeatCount="indefinite"/><rect width="388.34" stroke-linejoin="round" stroke-width="10" ry="0" height="388.34" fill="rgba(0, 38, 97, 0.818006)" rx="0" y="0" stroke="rgba(0, 102, 255, 1)" x="0" stroke-linecap="round" transform="scale(1 1) skewX(0) skewY(0) translate(-194.17 -194.17)" opacity="1"/></g></g></g><g transform="translate(0 0)"><g transform="translate(612.617 540)"><g transform="rotate(0)"><g><animateTransform attributeName="transform" begin="mouseenter" type="scale" keySplines="0 0 1 1;0.666667 0.0546957 0.25 0.285709;0.333333 0 0.666667 1;0.333333 0 0.666667 0.211658;0.281402 0.57395 0.639446 1;0.360182 3.03091e-14 0.723109 0.269192;0.370823 0.289841 0.633918 1;0.329803 0 0.66305 0.326897;0.186275 0.0223295 1 1;0.121212 0.380689 0.911422 0.977671;0.336559 0.673103 0.669812 1;0.35961 0 0.629257 0.710159;0.371953 0.730808 0.683869 1;0.31191 0 0.627617 0.42605;0.333333 0.788342 0.666667 1;0.333333 8.05543e-15 0.666667 1;0.333333 0.714291 0.555556 0.945304" values="1 1;1 1;1.00781 1;0.997499 1;1.038 1;1.0558 1;1.01723 1;0.845559 1;0.813541 1;1.5 1;0.813541 1;0.813541 1;1.01723 1;1.06109 1;1.038 1;0.998015 1;1.00781 1;1 1" calcMode="spline" keyTimes="0;0;0.1;0.183231;0.25;0.281806;0.316667;0.364689;0.366667;0.5;0.683333;0.684628;0.716667;0.733977;0.75;0.794513;0.85;1" end="mouseleave" dur="2s" repeatCount="indefinite"/><g><animateTransform attributeName="transform" begin="mouseenter" type="scale" keySplines="0 0 1 1;0.333333 0.333333 0.666667 0.666667;0.333333 0 0.666667 1;0.333333 9.48262e-14 0.666667 0.256799;0.333333 0.110035 0.666667 1;0.333333 0 0.666667 0.327322;0.299805 0.0286682 0.700195 0.214723;0.333333 0.27422 0.666666 1;0.333333 0 0.666667 0.328574;0.333333 0.0341904 0.666667 0.599705;0.333333 0.317243 0.666667 1;0.333333 0 0.666667 0.329291;0.333334 0.0280941 0.666667 0.719516;0.333333 0.410723 0.666667 0.690746;0.333333 0.434318 0.666667 0.723465;0.333333 0.343812 0.666667 1;0.333333 0 0.666667 0.317957;0.333334 0.0797045 0.666666 0.958044;0.333333 0.685014 0.666667 1;0.333333 0 0.666667 1;0.333333 0.333333 0.666667 0.666667;0.333333 0.801564 0.666667 1;0.333333 6.54388e-12 0.666667 0.618255" values="1 1;1 1;1 1;1 0.99104;1 0.998015;1 1.05656;1 1.06109;1 1.01723;1 0.849881;1 0.813541;1 1.3003;1 1.42707;1 1.5;1 1.37845;1 1.29544;1 0.940808;1 0.826868;1 0.813541;1 1.06109;1 1.06109;1 1.00773;1 0.99647;1 1.00061;1 1" calcMode="spline" keyTimes="0;0;0.00333974;0.139244;0.2;0.280956;0.283333;0.316667;0.365362;0.366667;0.466667;0.499219;0.5;0.516667;0.533333;0.633333;0.678859;0.683333;0.733333;0.738629;0.799238;0.8;0.919195;1" end="mouseleave" dur="2s" repeatCount="indefinite"/><ellipse stroke-linejoin="round" stroke-width="10" ry="191.166" fill="rgba(0, 38, 97, 0.818006)" cx="0" rx="191.166" cy="0" stroke="rgba(0, 102, 255, 1)" stroke-linecap="round" transform="skewX(0) skewY(0) translate(0 0)" opacity="1"/></g></g></g></g></g><text letter-spacing="0em" word-spacing="0em" font-family="Arial" text-anchor="middle" stroke-linejoin="round" stroke-width="10" fill="rgba(255, 255, 255, 1)" font-size="52.400002" stroke="none" stroke-linecap="round" transform="translate(0 0) translate(610.32 179.937) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)" opacity="1"><tspan x="0">begin: mouseenter</tspan><tspan dy="1.2em" x="0">end: mouseleave</tspan></text><text letter-spacing="0em" word-spacing="0em" font-family="Arial" text-anchor="middle" stroke-linejoin="round" stroke-width="10" fill="rgba(255, 255, 255, 1)" font-size="52.400002" stroke="none" stroke-linecap="round" transform="translate(0 0) translate(1300.49 179.937) rotate(0) scale(1 1) skewX(0) skewY(0) translate(0 0)" opacity="1"><tspan x="0">begin: dblclick</tspan><tspan dy="1.2em" x="0">end: click</tspan></text></svg>

### Using expression presets

<video width="100%" controls src="/assets/documentation/expressions/expressions_presets.mp4" title="Using expression presets"></video>

### SVG: Animate Motion

![Animate Motion](/assets/screenshots/100/friction-follow-path.svg)

### Sub-path effect with new offset

<video width="100%" controls src="/assets/screenshots/100/friction-subpath-offset.mp4" title="Sub Path effect with Offset"></video>

### Interactive Markers/In/Out

<video width="100%" controls src="/assets/screenshots/100/friction-interactive-markers.mp4" title="Interactive Markers"></video>

### Improved UX for toolbars

<video width="100%" controls src="/assets/screenshots/100/friction-toolbar-ux.mp4" title="Improved UX for toolbars "></video>
