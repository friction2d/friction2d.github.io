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
* Improved audio handling
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
  * Custom shader path
  * Removed file watcher instances
    * The implementation was flawed and needs a rewrite
    * Changes to shaders now require a program restart
* Added experimental *(untested)* package for Arch Linux
* Scene settings dialog fixes
* Better timeline UX
  * Support timecodes on the timeline
  * Simplify bottom scrollbar
  * Scrolling on the timeline now supports modifiers `CTRL` and `SHIFT`
    * `CTRL` + `wheel` will now scale in/out the frame range as if you used the scrollbar
    * `SHIFT` + `wheel` will now pan the frame range as if you used the scrollbar
    * Without a modifier it works as before, scroll up/down
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
* Development, testing and usage primarily happens on Windows 10 and Ubuntu 22.04
  * This means reported issues must be replicable on one of these platforms

Friction is beta quality software, expect issues and missing/broken features.

## Known Issues

* Adjusting shader effect parameters might trigger a crash in some circumstances
* CSS style sheets are not supported when importing an SVG
  * SVG's from Adobe Illustrator (and others?) may have issues due to this
  * In some circumstances this might result in an invalid undo state after import

And more, see our [issue tracker](https://github.com/friction2d/friction/issues) for more information.

## Support

If you find an issue with the application please report it on our [issue tracker](https://github.com/friction2d/friction/issues) *(requires a GitHub account)*.

For general discussion, feature requests etc use our [forum](https://github.com/orgs/friction2d/discussions) *(requires a GitHub account)*.

For other inquiries use support at friction dot graphics.
