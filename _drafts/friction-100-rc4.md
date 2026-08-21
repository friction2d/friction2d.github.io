---
title: "Friction 1.0.0-rc.4"
layout: post
lead: "Introducing the fourth release candidate for Friction 1.0.0."
image: "/assets/screenshots/100/friction-100-linux-screenshot.png"
categories: releases
release: 1.0.0-rc.4
download_active: true
---

This release focuses heavily on squashing bugs and refining the core architecture. Given the long gap between releases and the extensive list of changes, we decided a fourth release candidate was necessary.

## Changes since 1.0.0 RC 3

### New Features & Enhancements

* Setup Wizard (Quick Setup): Added a setup wizard that will guide you through setting up Friction on first run.
* Rendering & Export:
  * Added WebM render profile preset.
  * Export to image sequence now features a new, dedicated dialog.
* SVG Import Improvements:
  * Refactored SVG gradient support (fixed gradient points and alpha on import).
  * Refactored text support on SVG import.
  * Refactored SVG clipboard (paste) support, now supporting paste from Inkscape on macOS.
* New Expressions Presets: Added "Frame Remap Loop" and "Frame Remap Loop (bounce)".
* Experimental GLES3: Initial support for OpenGL ES 3.0. This is an experimental feature needed for future Flatpak aarch64 and Android support (will disable external shaders).
  * This feature must be built from source and is not available in any binary release.

Note for existing users: To access the new presets, please use the 'Install Presets' option in the Help menu, or use the new Quick Setup.

### UI & UX Improvements

* Refactored the Duplicate function.
* Branding: New logo (and splash screen on Windows).
* Menus & Icons:
  * Added persistent menu to gizmos/snap/grid buttons.
  * Added persistent menu to 'View'.
  * Added layer/box type icon on timeline/properties.
* Workflow & Canvas:
  * Support for step rotation via keyboard modifiers (Ctrl = 1 step default, Shift = 15 steps default. Configurable in grid settings).
  * Converting object to path now removes the original object and adds the suffix "Path" to the new object.
* Keyboard Shortcuts:
  * Add Key(s): Alt+K
  * Object to Path: Shift+Ctrl+C
  * Stroke to Path: Ctrl+Alt+C
* Added support for HiDPI rounding in the UI to fix visual artifacts on some font-scaled configurations (Uncheck "HiDPI PassThrough" in settings to enable).
* Various small UI/UX tweaks.
* Fixed some UI issues on macOS.
* Improved scene width/height input in canvas toolbar.
* UI (HiDPI) fixes for input slider.

### Bug Fixes & Stability

* Core & Animation:
  * Fixed issues with rotation when using the flip function.
  * Added fallback behaviors and safety checks to prevent crashes when handling corrupted or incompatible node data.
  * Fixed regression in color animator button (would not update color if changed).
  * Fixed a crash if a linked item didn't have a color animator.
  * Fixed parent effect (**Note:** Changes to this effect **will** introduce different output in older projects).
* Scenes:
  * Fixed crash when deleting a scene linked in another scene.
  * Fixed a crash when unselecting (set none) a linked scene target.
  * Bug fix in renderer for multiple scenes.
* Rendering & Encoding:
  * Fixed crash in box render data.
  * Fixed alpha in WebM video export.
  * Fixed crash and/or corrupt image in video/image encoder.
  * Fixed a crash in video/image encoder if image dest is unpremultiply.
  * Fixed preview/render cache issues on macOS.
  * Fixed renderer UI settings bug when using "unsupported" formats/codecs.
  * Bug fix in output settings widget where available codecs would not refresh.
  * UI/UX (bug) fixes to the render instance widget.
* SVG: Bug fixes in SVG Optimizer.
* Sandboxing: File I/O has been refactored to support sandboxing, ensuring complete support for Flatpak/Portal on Linux.
* Upgraded to Qt 5.15.19.
* EGL is now default on Linux (GLX is deprecated). This enables us to support both X11 and Wayland.
  * Note that NVIDIA on X11 has issues with EGL (black screen), we provide custom binaries for systems that still need GLX.
* Raster Effects:
  * Fixes for shader effects.
  * Fixed crash in Noise Fade (CPU/GPU).
  * Fixed crash in Wipe (CPU/GPU).
  * Fixed crash in Colorize (CPU).
  * Fixed crash in BrightnessContrast (CPU).
  * Fixed crash in Blur (CPU).
  * Fixed crash in Shadow (CPU).
* Video: Framerate fixes.
