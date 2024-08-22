---
title: "ChangeLog for v0.9.3"
layout: default
---

### Update README.md
* **Commit:** ed048d898000f6686c7ca795072448b055ad2b05 (tag: v0.9.3)
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 4 17:39:55 2023 +0200


### Update expressions editor
* **Commit:** b2469d88d538884db8b39929055f4d522c85e94a
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 4 02:26:36 2023 +0200

minor (color) changes

### Update UI
* **Commit:** 2322b43e5131bcf6eb55e95cb8193aeeadb7d0ee
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 3 22:42:36 2023 +0200

Move the last viewer actions from timeline

### cleanup timeline widget
* **Commit:** ff8aa93d95f65f499ecba24882d68ffcbe9f68bc
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 3 22:39:24 2023 +0200


### Update welcomedialog.cpp
* **Commit:** 6bee560ab91b7254a6432c562c98471eab394e89
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 3 18:54:21 2023 +0200

add icons

### Update mainwindow.cpp
* **Commit:** f3b4b98157e4f485ac31997d63144e982d0a12a8
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 3 18:49:57 2023 +0200

focus fix

### UI: show/hide timeline (T)
* **Commit:** 259abcc28adc38eacf2402679de0697ffdb3b798
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 2 20:31:11 2023 +0200

Ref: https://github.com/orgs/friction2d/discussions/43

### UI: New toolbar with common actions
* **Commit:** e985cec66a11f73650d7fc5ad04077604ff7ded1
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 2 18:44:57 2023 +0200


### Update timelinedockwidget.cpp
* **Commit:** 7afd4224db94cf51ba5743ed6ee35bac9d3b574e
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 2 18:13:00 2023 +0200


### Update animationwidgetscrollbar.cpp
* **Commit:** 88b1a71a2a3aba8cf091b51e11abb5d35efa2f37
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 2 18:12:18 2023 +0200

fix first frame

### Update icons
* **Commit:** 6aa871834979d6f4df6e8a723d7d3cea944b2c7c
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 21:17:38 2023 +0200


### New assets widget
* **Commit:** 9baef75c08b67060a0fda7f93f7ca4924f55092a
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 05:41:34 2023 +0200

This replaces filesourcelist. It's simpler, uses Qt widgets and can easily be expanded with new features (when/if needed).

Fix #21

### imagebox: fix invalid state after undo (removal)
* **Commit:** b8bec4abe3f527967102736d0faa38b350344d6a
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 05:33:12 2023 +0200

If you remove an asset and undo (the box removal), the box has no file handler when restored. So, we keep an internal qstring for the path and restore the file handler if needed.

Probably also required for video and sound. (any box that has a file handler).

### Update boundingbox.cpp
* **Commit:** 39305291e587faf4acd2b6a381b89a15c997daab
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 05:23:39 2023 +0200

assert not needed, scene can be empty

### Update actions.cpp
* **Commit:** 9802b49b3e14fe0dc69f0320f65b9c1ec5d1f074
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 05:23:04 2023 +0200

no ora

### Update canvaswindow.cpp
* **Commit:** 49f87dec3a6418d2ec49ff964a7b79e8a0527743
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 02:28:33 2023 +0200

Accept dropped item model (might be an asset)

### Update keysview.cpp
* **Commit:** 7de77af49923e5ced409f5d79f140bae5d2eabde
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 02:28:21 2023 +0200

Accept dropped item model (might be an asset)

### Update actions.cpp
* **Commit:** 237c1ea398bddd52f6b059138e24756c1392f149
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 02:27:39 2023 +0200

Try to get asset (external media file) path from dropped item model

### Update appsupport
* **Commit:** 0b32b48ebd27ff65421e81436d825c127ac74863
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 02:24:37 2023 +0200


### Update icons
* **Commit:** d44d2e004b0b06383061cccca3a5091c2ca5331f
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 1 02:24:00 2023 +0200


### ui focus fixes
* **Commit:** 04d271498d492d8eb37a40bb74b8078191010a47
* **Author:** Ole-André Rodlie
* **Date:** Sun Jul 30 20:00:55 2023 +0200


### Fix font family combobox
* **Commit:** c78fde670474bfab2275c308d57064241e5d4ab3
* **Author:** Ole-André Rodlie
* **Date:** Sun Jul 30 03:19:03 2023 +0200

Remove junk output from QFontDatabase.

### Update README.md
* **Commit:** fa77727a79ccd316f0f885426617329a7ed221a3
* **Author:** Ole-André
* **Date:** Sat Jul 29 21:21:54 2023 +0200

add license info for new icons
### Move oileffect to examples
* **Commit:** 975df8740d0fd7a67602ab0e8ea238eef2bdb4e1
* **Author:** Ole-André Rodlie
* **Date:** Sat Jul 29 19:55:04 2023 +0200


### Update icons
* **Commit:** 34eb327fcf3a90e1502ef4bfcffb00e3a1803f4b
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 28 23:45:40 2023 +0200


### Update renderinstancewidget
* **Commit:** f2a4ac33196c2f84bab3fb9dcf7e4302717d6cef
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 28 23:20:23 2023 +0200

ui fixes

### Update timelinedockwidget.cpp
* **Commit:** 699cde6702ff04f0b784e7d5ed1ecf63d8f448ca
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 28 22:27:04 2023 +0200

ui fixes

### font widget: add fill color button
* **Commit:** c07f62581f5e6875974a013ba1f9be2490a017ea
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 28 18:32:59 2023 +0200


### Update timelinedockwidget.cpp
* **Commit:** 127ae6a17c64bd79c78ec9f51da3008ff67cc0c7
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 28 17:11:23 2023 +0200


### Update timelinedockwidget.cpp
* **Commit:** 03e8094ab231e956da146c5938fd21fa3c6e88fc
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 28 17:03:51 2023 +0200


### minor
* **Commit:** 04e2a1d660039db901f61539563146073373ccf9
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 28 04:26:35 2023 +0200


### Show cache render status #25
* **Commit:** 3b8cd020ae9f426c74f36da67422a841951ba40f
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 28 02:51:14 2023 +0200


### minor ui stuff
* **Commit:** 58880a991a874ebd9408c5a8ed3f39246d761431
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 27 10:15:14 2023 +0200


### Move node visibility toolbutton to viewer toolbar
* **Commit:** e9c1c88f293665aa0f60bd87d0450f634bc8c14a
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 27 09:24:42 2023 +0200


### Move LocalPivot action to viewer toolbar
* **Commit:** 8d9f9f02c75731a8d530cfa57d8499da54590464
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 27 05:29:51 2023 +0200


### Update filesourcescache.cpp
* **Commit:** f0924cbfb1c88bccfc2dc30e95d533063c88984b
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 27 03:40:26 2023 +0200

remove tiff (not supported by skia)

### Update scenesettingsdialog.cpp
* **Commit:** 0d19b7b6f58e51f47224f7cf740032d41c0f75c7
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 27 03:20:02 2023 +0200

Update default

* 300 frames
* 30 fps
* black background

### Update canvas.cpp
* **Commit:** dce3f1345110fbaef8b9af1da38bbd9ef8d2c9a8
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 27 03:14:09 2023 +0200

Set darker canvas background

### Update mainwindow.cpp
* **Commit:** 8bb7fdbeca36a1b1744b49247ef53d39886714da
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 27 02:38:12 2023 +0200

block ui signals when updating settings for canvas

### Update fakemenubar.cpp
* **Commit:** 2fc37a521bfe5b0e5421619ce3a5c139f4b680ee
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 27 02:35:55 2023 +0200


### Update doc + ci
* **Commit:** abb00dfc1995f49045dfa60e9fb03871a70d3ba8
* **Author:** Ole-André Rodlie
* **Date:** Tue Jul 25 21:19:21 2023 +0200

we prefer clang on Unix

### Update friction.rc.in
* **Commit:** 1b13f57d8e1655e9184659682974230a12f1165d
* **Author:** Ole-André Rodlie
* **Date:** Mon Jul 24 16:16:35 2023 +0200

add missing patch number

### bump version
* **Commit:** 5376ff5ddcee16fe51b7eaa5874cfdef2a451771
* **Author:** Ole-André Rodlie
* **Date:** Mon Jul 24 16:15:52 2023 +0200

