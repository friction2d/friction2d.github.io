---
title: "ChangeLog for v0.9.4"
layout: default
---

### Update performancesettingswidget.cpp
* **Commit:** 425b9c4c90a397acd0cc4140cbb2d72adc863a4e (tag: v0.9.4)
* **Author:** Ole-André Rodlie
* **Date:** Sat Sep 2 21:47:58 2023 +0200

check audio device before apply settings.

### Added preferences icon
* **Commit:** b652b4b94ec3ff7957c9dea57cf6e826cf9c60dc
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 31 20:42:04 2023 +0200


### Settings are now Preferences (Ctrl+P)
* **Commit:** 5d4008f0d4f4f119180fb8f908691a5fb44971d7
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 31 20:37:27 2023 +0200

And moved to the file menu (from edit).

### Update appsupport.cpp
* **Commit:** e87bfb2eb2d6bb66f4399ee4af3cf0f09584f183
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 31 20:24:27 2023 +0200


### Settings: add audio output
* **Commit:** 3a6cf2052e51d0f14db35162490c39f54bca3bc3
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 31 20:13:31 2023 +0200


### Settings: dialog fixes
* **Commit:** 8832288fcf249a612617e0eecaf0a69ab02d6aac
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 29 23:43:57 2023 +0200


### Settings: add restore state
* **Commit:** b29d54d67d3ec54e6f9d48e6f174b84214d4834e
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 29 22:27:29 2023 +0200

Widgets need to know if update settings means load from file or set to default.

### Update settingsdialog.cpp
* **Commit:** 91b6586f947a9225e5c0bba28aa59455b7615470
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 29 21:29:44 2023 +0200


### Update pluginssettingswidget.cpp
* **Commit:** fd44dc529a3ee0986e09f3c86711d080b8976282
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 29 20:34:43 2023 +0200


### Settings: basic shader manager
* **Commit:** f5850e9dd2624022398556eae8c58a370443916b
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 29 20:24:01 2023 +0200

Added a basic shader manager in settings.

* List found plugins
* Enable/Disable individual plugin

Changes require restart.

### Support custom shader effect path
* **Commit:** 897b76ff8353e75e3f2127a2779b2440a7213c78
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 28 22:31:22 2023 +0200


### Update settings dialog/widget
* **Commit:** 71b489778efe7560f988dbe1f04270f331dc39a5
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 28 21:54:51 2023 +0200


### Added Qt patches
* **Commit:** ce8d5eecdd3be6c7769e5119cabf05d64c6e15f5
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 27 19:54:01 2023 +0200


### Remove unused
* **Commit:** 13a213e94c690253401ce3c79eaec8938053bcfc
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 26 18:48:04 2023 +0200

We don't need this stuff anymore ...

### Update main.cpp
* **Commit:** 4efceb985b49cb4c2b6dd07400f2f66bd0b59299
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 26 18:21:21 2023 +0200


### Removed docs:
* **Commit:** f06f157b4855c70007b471df5a144067573a7eea
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 22 15:26:58 2023 +0200

Docs has moved to https://github.com/friction2d/friction2d.github.io and is available on https://friction.graphics/documentation/

### Fix Qt 5.12 build errors
* **Commit:** 7579d8f43feed59794057543176eda264c8c1cfc
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 21 22:47:09 2023 +0200


### docker: Support Arch Linux
* **Commit:** a20adfa461263f5c49265713a9fdaa9cfdfd4073
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 21 21:10:48 2023 +0200


### effectsloader: Disable file watchers
* **Commit:** 9c6e9362d3f7c523e273e8c2b5f345363ba9de71
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 21 18:06:57 2023 +0200

Fix #63

TODO: write a new watcher in a future release

### Revert "Update CMakeLists.txt"
* **Commit:** c44339d22dc30281430e97aa924498eaee5e5fe9
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 20 23:00:17 2023 +0200

This reverts commit 9d2da1a6d0721bd267c8e3aa1b866a0a84b93c8f.

### Update CMakeLists.txt
* **Commit:** 9d2da1a6d0721bd267c8e3aa1b866a0a84b93c8f
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 20 22:18:13 2023 +0200


### Update CMakeLists.txt
* **Commit:** 98a93345e1a1f6de4516693936fce7211a840a63
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 20 19:24:44 2023 +0200

Bundle shaders is disabled as default, enable with BUNDLE_SHADERS

Will probably enable this as default in 0.9.5.

### Update build_docker.sh
* **Commit:** dcca84f327d92463b9926edc864a41247a074fcb
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 20 18:40:38 2023 +0200


### Update fontswidget.cpp
* **Commit:** 5b43b0d364cfbed49b848520b07a4d1ffc5a0f20
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 20 16:58:37 2023 +0200

Fix #61

### Update animationwidgetscrollbar.cpp
* **Commit:** dcbc34bcfe378c549e9a842c92f2c0bbf4a014ee
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 19 19:23:49 2023 +0200

We don't want a menu on the frame range scrollbar

### Better timeline UX
* **Commit:** 1c9ae095d60cff1b190dfd3cb161f71169d8e893
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 19 18:31:02 2023 +0200

Scrolling on the timeline now supports modifiers CTRL and SHIFT.

* CTRL + wheel will now scale in/out the frame range as if you used the scrollbar
* SHIFT + wheel will now pan the frame range as if you used the scrollbar
* Without a modifier it works as before, scroll up/down

See https://github.com/orgs/friction2d/discussions/58#discussioncomment-6769336

### Update timeline frame range scrollbar
* **Commit:** 26af22ab0de77adb61f870ff69e492a4ccc0f7d3
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 19 17:59:02 2023 +0200

Based on feedback in https://github.com/orgs/friction2d/discussions/58

### Support for timecodes on timeline
* **Commit:** 496a3eb5d944c7f49e190eabed7e2b1acc6e2c10
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 19 16:12:57 2023 +0200


### Update scenesettingsdialog.cpp
* **Commit:** 79e5440f7a541ef925eed17f6e3342ae44691040
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 19 14:23:07 2023 +0200

Force dot separator for FPS input

### Added timecode converter
* **Commit:** c8e6df60b09214984c3cd9d684217e5e035ccd34
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 19 14:19:17 2023 +0200


### Update shaders
* **Commit:** 15163e7cd0a8c6ab767162358f7bb2cf4a6ac55c
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 18 20:54:10 2023 +0200


### Update build_docker.sh
* **Commit:** 045a4f12cca9b2a463cbd852d33a303b06a50c64
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 18 13:10:57 2023 +0200


### Update shaders
* **Commit:** 231f903b158a4278940fe60a596c04dccf89e99e
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 18 00:06:51 2023 +0200


### Added shaders submodule
* **Commit:** 7ee0728c899408663c4a698c58dcc19dec28cf5f
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 17 23:26:05 2023 +0200


### Recursively scan for shader plugins
* **Commit:** 39995c82ce8dd3b32d5fd3c169d71a3b5630c7c3
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 17 21:54:23 2023 +0200


### Improved shader loader
* **Commit:** e5dfdd43d6ae23f86f8ba64a14fd8dc71cf0639c
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 16 22:25:56 2023 +0200

* load shaders from presets folder (first priority)
* don't allow duplicate shaders (name + menu path must be unique)

### Don't add locked object to selection #52
* **Commit:** 3afc195846327ddf8011b59bbe7d52a34614806b
* **Author:** Ole-André Rodlie
* **Date:** Tue Aug 15 18:32:30 2023 +0200


### Update audiohandler.cpp
* **Commit:** 74dedbdc346864682a14ee52dc794be351759525
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 14 19:17:01 2023 +0200


### Update expressiondialog.cpp
* **Commit:** b12448d5db5e6ccefc246f754a1c721c09e02d9f
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 14 18:53:05 2023 +0200

bugfix

### easing presets bugfix
* **Commit:** a146a167e5fe4702d8ceaf4ffe556cbe22565c18
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 14 18:19:09 2023 +0200


### minor
* **Commit:** af2fe7ce68742b5f5e8d4bb36a76f7f7c46df856
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 13 18:36:40 2023 +0200


### Improved audio handling
* **Commit:** a2ed061e54b4dc7ff02d1e438bd580112987c725
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 13 05:34:07 2023 +0200

* Fix crash if audio device does not exists (anymore)
* Other misc changes
* Added audio device selector  in status bar (for now, may move to settings dialog)

### Fix misc warnings
* **Commit:** 32abbc94c0285ae6d7a01174f82d9ddf1190550e
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 12 20:17:44 2023 +0200


### Fix qrand warnings
* **Commit:** 283b48a5213a318628fed778876b95aef46a9861
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 12 19:37:30 2023 +0200


### Fix QString warnings
* **Commit:** 4a2b93c968a252ba8ee14a5f9bb084c654638983
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 12 19:04:39 2023 +0200


### Fix QWheelEvent warnings
* **Commit:** cedc430513839c7f774b36bcb83019e48452197f
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 12 18:38:59 2023 +0200


### Update canvaswindow
* **Commit:** e335de40a5ac94f3db4c645c35d42bf707ad2d5a
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 12 18:30:01 2023 +0200

* cleanup
* fix warnings
* added pan view with Alt + mouse/touchpad

### Fix #55 (full screen on Windows)
* **Commit:** 2fc5f339707a53438477087674870d1ddfad36ed
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 11 21:54:55 2023 +0200


### Bump version
* **Commit:** 6c6be6f7c832e5a5b479ff00aaee0b2f3cf0d320
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 6 15:41:28 2023 +0200

