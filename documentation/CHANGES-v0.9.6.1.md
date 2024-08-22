---
title: "ChangeLog for v0.9.6.1"
layout: default
---

### Update appdata.xml.in
* **Commit:** ae9c84a732e03e580e61b99b4c93dae157acdc46 (tag: v0.9.6.1, origin/v0.9, v0.9)
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 21 19:14:46 2024 +0200


### SVG Export: initial support for masking
* **Commit:** 6526e55361144008a4bd59f840dfcc6b076a7f6e (v0.9-svg-mask)
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 19 20:14:01 2024 +0200

If group is layer use first child item with blend mode 'DstIn' as mask.

Ref: #226

### Update svgexporter.cpp
* **Commit:** cc1aa80a89726c9e3e8ee929486f7835f7345523 (v0.9-dev)
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 17 21:24:44 2024 +0200

SVG Preview CSS fixes.

Ref: https://github.com/friction2d/friction/pull/224

### add style for preview svg
* **Commit:** 76c0022696e53cf3a7c54c6fa4ae253d3de4aa30
* **Author:** irwanto
* **Date:** Sat Aug 17 14:48:29 2024 +0700

adding css style preview SVG to make it fit into screen
### SVG Export: support stroke-linecap/stroke-linejoin
* **Commit:** c08c42d0609d7751fe316c5e670f74af0a6de04e
* **Author:** Ole-André Rodlie
* **Date:** Sun Aug 18 01:50:51 2024 +0200

Ref: #223

### UI/UX minor
* **Commit:** 9269acbdaa6bc56965627fae92ac795aac8893b6
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 16 21:13:41 2024 +0200

Add the option to reinstall default render profiles.

### Update renderinstancewidget.cpp
* **Commit:** 75d826bad9e783d2cb579eb83e86bf16bc5f02d9
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 16 20:44:57 2024 +0200

Backport some minor UI changes from main.

### Update main.cpp
* **Commit:** b3beffec8237f60bf2b7df8d0598011161825a2f
* **Author:** Ole-André Rodlie
* **Date:** Fri Aug 16 20:44:15 2024 +0200

Minor.

### SVG: fix skew X+Y animate export
* **Commit:** f36b6be2d0ca1be30f0215f3a3df917c1be2c6ca (v0.9-ui, v0.9-skew)
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 15 18:28:00 2024 +0200

Ref: #221

### Check write access to conf dirs
* **Commit:** 3fd83da4aeda234a644a06b740b0e1275b82487c
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 15 15:26:13 2024 +0200


### Update mainwindow.cpp
* **Commit:** 16e45d73a179f9d74472d15ce0e87f2a23d4b40d
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 15 15:18:29 2024 +0200

Fix warning.

### Check project format version on load
* **Commit:** 2e8b0cfa9977fda0191628a8e510c4703c2d69ff
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 23:22:01 2024 +0200


### Update docs
* **Commit:** f9a1be991cbeac789bb2c8cc7d5999ddf4684acf
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 21:57:52 2024 +0200


### Update build_vfxplatform_package.sh
* **Commit:** 6ff2a8cadda69c919767c48587e02de964a9b283
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 21:33:48 2024 +0200


### Support 'Add Key(s)' shortcut (Insert)
* **Commit:** b2c6df289387453a39b1c356b05cdb05ab971b03
* **Author:** Ole-André Rodlie
* **Date:** Sat Aug 3 02:17:04 2024 +0200


### Update mainwindow.cpp
* **Commit:** 0bec97c9a05415963ad8e240b3b96255e146b0df
* **Author:** Ole-André Rodlie
* **Date:** Mon Jul 22 16:00:40 2024 +0200

Don't run auto save related stuff during shutdown.

### Timeline: show vertical scrollbar if needed
* **Commit:** da61a70057e6f5ab43d80a7365442dc55698bc85
* **Author:** Ole-André Rodlie
* **Date:** Sat Jul 6 21:18:15 2024 +0200

Fix #206

### Queue: show output format in label
* **Commit:** b600481d203b931b566409f0f4058d5bed32ecff
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 19:36:50 2024 +0200


### Install default render presets #220
* **Commit:** 521bb9f829e56abcd7c47f18d14aa262bf90ce6e
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 17:33:25 2024 +0200


### Update resources.qrc
* **Commit:** 777f5206abea813d3ac7db70056f40a86ddb3448
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 17:32:39 2024 +0200

Ref: #220

### Update render presets name #220
* **Commit:** 9333f268207c8d492b997d3aee14cbb927599dc4
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 17:07:06 2024 +0200


### Add render presets #220
* **Commit:** 08443f436278f0dacd1a998f1ebf3fd72d110464
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 17:03:29 2024 +0200


### Update renderinstancewidget.cpp
* **Commit:** a960b55e70424c1fe314af27ea87de09b3f0eb45
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 16:55:58 2024 +0200

Scan presets by name, makes it possible to control order.

Ref: #220

### Render/UI: fix image sequence file extension
* **Commit:** c51a284cb2fc5562c30218692899526f3342c3ad
* **Author:** Ole-André Rodlie
* **Date:** Wed Aug 14 12:31:59 2024 +0200

We now check the codec and only use proper extensions for PNG, TIFF and JPEG.

Ref: #219

### Core: fix double-click on textbox
* **Commit:** e3d2fd4e2a6cbe761cde627c7a61c20c1dc5be4d
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 12 23:34:23 2024 +0200

Open and focus 'Text and Font'  widget on textbox double-click instead of legacy dialog.

### Update exceptions.h
* **Commit:** 2d7f98da075b53637908e91b1dfce0e09ce0480c
* **Author:** Ole-André Rodlie
* **Date:** Mon Aug 5 18:52:55 2024 +0200


### Disable timeline when rendering
* **Commit:** 77aebf5b6c2fe26976efe97335904c469b2bf44a
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 1 22:50:22 2024 +0200


### Fix render queue with multiple scenes
* **Commit:** 52409f611abec9b63082ee016e4991662a206ed1
* **Author:** Ole-André Rodlie
* **Date:** Thu Aug 1 22:25:37 2024 +0200

Rendering multiple scenes in queue now works, the renderer will switch to the targeted scene before rendering.

### Timecode calc fixes
* **Commit:** a469b3701aea668941dc9b1c6af054265c285840
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 26 21:57:59 2024 +0200


### Update scenesettingsdialog.cpp
* **Commit:** a0708e63ebe8f253245c410447367df165ed79a9
* **Author:** Ole-André Rodlie
* **Date:** Sun Jul 21 21:34:32 2024 +0200

Fix max ranges.

### Update exportsvgdialog.cpp
* **Commit:** 32369e8621f7efd6d2d615c74c7d0432937d1020
* **Author:** Ole-André Rodlie
* **Date:** Sat Jul 20 17:06:34 2024 +0200

Fix frame range min/max.

### Update undoredo.h
* **Commit:** 8df58d7bf95c9a838d5a22f1d2b0e81ec1353f18
* **Author:** Ole-André Rodlie
* **Date:** Sun Jul 14 19:42:22 2024 +0200

Fix undo block reset (on Windows).

Ref: #209

### Fix sub windows state #204
* **Commit:** 5c7a23b1b41b91fdd34f5f00e65fd09ce1c744cd
* **Author:** Ole-André Rodlie
* **Date:** Fri Jul 5 00:03:16 2024 +0200

The latest sub window refactor introduced (re)store state issues, this fixes it.

### CentOS 7 for Life :sunglasses:
* **Commit:** 4247d120b8b56ae157a48ce3cfc6abef69322056
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 4 21:06:22 2024 +0200

I know EL7 is EOL and I don't care, we will still use EL7 to build Linux binaries.

There are no security concerns for our usage.

### Update friction.rc.in
* **Commit:** 8aac1343b829d96ca3e9006a1a09f158119c59ad
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 4 18:51:20 2024 +0200

v0.9 now uses tweak version for patch releases. Note that tweak versions are not supported in the Microsoft Store, so we will not do this change in 'main' since we will follow strict X.Y.Z versions from v1+.

### Update canvasmouseinteractions.cpp
* **Commit:** f5eb50a04c27c7fb88e69b004b10f15f85741e37
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 4 17:36:54 2024 +0200

Rename canvas menu 'Settings...' to 'Scene Properties' and add icon.

Ref: #205

### Add 'scene' to main menu #205
* **Commit:** 4d307ab08de1cbe28767cfe1acd861056759495b
* **Author:** Ole-André Rodlie
* **Date:** Thu Jul 4 17:32:38 2024 +0200


### Sub windows refactor #204
* **Commit:** a07973bbe61882403c534eb08794ee2247893d69
* **Author:** Ole-André Rodlie
* **Date:** Wed Jul 3 18:46:50 2024 +0200

Fix several issues in how (sub) windows work. This is primarily a crash/bug fix.

### SVG Export: add 'fill-rule' if path is 'even-odd'
* **Commit:** 476602981380155c279490bb9c362d40358323a7
* **Author:** Ole-André Rodlie
* **Date:** Mon Jul 1 17:58:52 2024 +0200

If path is 'even-odd' add 'fill-rule' when exporting SVG.

* https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/fill-rule
* https://github.com/orgs/friction2d/discussions/200
* https://github.com/friction2d/friction/issues/201

### Bump version
* **Commit:** fbd03d8b3f40f63d1dd63815658c327ba176f57d
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 30 22:00:13 2024 +0200


### SVG import default values fix for stroke and fill.
* **Commit:** 147fc912db371b48e185658d544b576e6e74eebc
* **Author:** vestineo
* **Date:** Sun Jun 30 21:15:40 2024 +0530

