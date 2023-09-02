---
title: "Friction 0.9.4 released"
layout: post
categories: releases
---

# Friction 0.9.4

Introducing Friction 0.9.4. This release includes several fixes and generic improvements to the user experience.

## Changes

* Fixed fullscreen on Windows
* Fixed several build warnings
* Viewer/Canvas now supports panning with `ALT` modifier
* Improved audio device handling
  * Better failsafe
  * Restore last used device *(if possible)*
  * Select audio output device *(in settings)*
* Easing expressions bugfix
* Expression dialog bugfix
* Don't add locked object(s) to selection *(bugfix)*
* Improved shader loader
  * Support shaders in application bundle *(not used yet)*
  * Don't allow duplicate shaders
  * Recursively scan for shader plugins
  * Optional custom shader path
  * Removed file watcher instances
    * The implementation was flawed and needs a rewrite
    * Changes to shaders now require a program restart
* Scene settings dialog fixes
* Better timeline UX
  * Support timecodes on the timeline
  * Simplify bottom scrollbar
  * Scrolling on the timeline now supports modifiers `CTRL` and `SHIFT`
    * `CTRL` + `wheel` will now scale in/out the frame range as if you used the scrollbar
    * `SHIFT` + `wheel` will now pan the frame range as if you used the scrollbar
* Font widget bugfixes
  * Fixed regressions introduced in earlier releases
* Removed more legacy code
* Improved settings dialog
* Added basic shader manager *(in settings)*
* `Settings` are now `Preferences` *(Ctrl+P)*
  * Moved from edit to file menu

[**Full Changelog**](https://github.com/friction2d/friction/compare/v0.9.3...v0.9.4).

## Notes

* Windows setup/portable are not signed and will trigger warnings during installation and/or first run

Friction is beta quality software, expect issues and missing/broken features.

## Known Issues

* HiDPI on Windows does not work
* Adjusting shader effect parameters might trigger a crash on Linux
* CSS style sheets are not supported when importing an SVG
  * SVG's from Adobe Illustrator (and others?) may have issues due to this
  * In some circumstances this might result in an invalid undo state after import

And more, see our [issue tracker](https://github.com/friction2d/friction/issues) for more information.

## Support

If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.

For general discussion, feature requests etc use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

For other inquiries use support at friction dot graphics.
