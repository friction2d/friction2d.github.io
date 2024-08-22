---
title: "ChangeLog for v0.9.6"
layout: default
---

### Update appdata.xml.in
* **Commit:** a37a3db73bcec01236ae8f91b487543223b9c865 (tag: v0.9.6)
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 24 13:44:40 2024 +0200


### Minor
* **Commit:** f49ec575e6fd14878aac0cf091596b1836329976
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 22 23:37:25 2024 +0200


### Revert "Update performancesettingswidget.cpp"
* **Commit:** 6f83c7134e68c466acc32b7825423003dcd1b768
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 17 22:56:38 2024 +0200

This reverts commit 8b72d6a52e91fd46c9f7a3c47dbf10f090c8cbae.

### ShaderEffects refactor v1 (#191)
* **Commit:** fccecd079313f977cb77708762580b68c6e401a2
* **Author:** Ole-André
* **Date:** Mon Jun 17 22:55:05 2024 +0200

This is the first refactor of the shader effects code. The goal is to keep all QJSEngine / QJSValue calculations and calls inside the ShaderEffectJS class.

This should improve stability when many shader effects are used in a project.
### Update docs
* **Commit:** 81115f2f7fab6e50f356e7b5b283b8b8197d2185
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 16 20:58:18 2024 +0200


### Update README.md
* **Commit:** 252ff9e97344f60baf273e1712c8976e064c4be6
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 16 14:28:42 2024 +0200


### SVG: support quick preview
* **Commit:** 103d61e12c88948415a38e400b8fadb5cbdcb7ba
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 16 13:41:11 2024 +0200

Added 'Preview SVG' action to toolbar with shortcut 'Ctrl+F12'.

Also (re)store export dialog check boxes state (background/fixed/loop).

### Minor
* **Commit:** 5f6cc25a302d05feb1cf4309958fdd2a6cceabf0
* **Author:** Ole-André Rodlie
* **Date:** Fri Jun 14 17:08:57 2024 +0200


### Update performancesettingswidget.cpp
* **Commit:** 8b72d6a52e91fd46c9f7a3c47dbf10f090c8cbae
* **Author:** Ole-André Rodlie
* **Date:** Fri Jun 14 17:08:34 2024 +0200

Add warning under gpu acceleration for Radeon cards.

### Update docs
* **Commit:** f1d3c8d77e15f8cf68b5b0030fdcf7934694b8c7
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 13 22:27:55 2024 +0200


### line tag
* **Commit:** 8ee89c9669a8635f6c83949c7af95ce95b2645c4
* **Author:** vestineo
* **Date:** Thu Jun 13 22:55:16 2024 +0530


### Qt 5.15.3+ is now required
* **Commit:** fef4f052428d9835634d51dcf9b8348a9fc3d810
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 9 20:04:28 2024 +0200


### Scripts minor
* **Commit:** f5ee150cdc3989cee93654e8397580106f223c16
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 8 23:40:08 2024 +0200


### Update docs
* **Commit:** 69f7621ff54300a7eb93c779c5bf666f093abaaa
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 8 21:52:48 2024 +0200

Ref: https://github.com/friction2d/friction/issues/182

### Update boxsinglewidget.cpp
* **Commit:** 0c3853f1ef0529361c51afca9e03da36bc010521
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 8 20:58:34 2024 +0200

Don't switch CPU/GPU on shaders (crash fix).

### Update motionblureffect.cpp
* **Commit:** 91049b229dc3dde01b7f107c0e347abcfb2d4001
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 4 19:11:20 2024 +0200

Check parent before usage (crash fix).

This should probably not happen, but I have project files that does.... so do this instead of throwing (always load projects! broken or not).

### Update renderinstancewidget.cpp
* **Commit:** 2fdb2ea9065b4a82107e3761251af47cddb68fa5
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 4 19:08:13 2024 +0200

Check before usage (crash fix).

### Update icons
* **Commit:** 1bfb3037a18ef12ccf20a0fefb67329b8a149d6e
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 2 15:11:00 2024 +0200


### Update docs
* **Commit:** a7f07c3a4098409451da441bc7f19f0f21a97539
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 1 00:40:07 2024 +0200


### Update icons
* **Commit:** 3880363d3592f3f7f60acf9df93cd5bae8ef2e4a
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 1 00:18:21 2024 +0200


### Update icons
* **Commit:** 56b08a1773cc2a5f5d9f3d7c24abbf08f512cfd8
* **Author:** Ole-André Rodlie
* **Date:** Fri May 31 22:02:31 2024 +0200


### Update icons
* **Commit:** 31d21c809e696ecfd3bb67e366d32c298fe722d0
* **Author:** Ole-André Rodlie
* **Date:** Fri May 31 21:45:11 2024 +0200


### Update icons
* **Commit:** 13d9bfd8ba481bcd9096692fe34230bf5f17f5b9
* **Author:** Ole-André Rodlie
* **Date:** Fri May 31 21:33:57 2024 +0200


### Update icons
* **Commit:** 7d3b8118c906d14e7e693b762f7641ba898c646b
* **Author:** Ole-André Rodlie
* **Date:** Fri May 31 20:11:55 2024 +0200


### Update CMakeLists.txt
* **Commit:** a158c8cc9aa4700383ad4359309e48dc5cb32c81
* **Author:** Ole-André Rodlie
* **Date:** Fri May 31 00:15:46 2024 +0200

Fix icon install

### Icon fixes
* **Commit:** ed8eccbbb8b6d64b877c27b1df0e14b772981e00
* **Author:** Ole-André Rodlie
* **Date:** Thu May 30 23:52:07 2024 +0200


### Update icons
* **Commit:** 3a25422aa36f5cd8cfe21595165142a5060680e5
* **Author:** Ole-André Rodlie
* **Date:** Thu May 30 23:46:29 2024 +0200


### Update git-backup.sh
* **Commit:** 67dd69ba525f4256b514d1b50b191654f66d94ed
* **Author:** Ole-André Rodlie
* **Date:** Thu May 30 23:19:55 2024 +0200


### Added icon theme
* **Commit:** 0eaac447500ef08171f091a8344dde61fc978626
* **Author:** Ole-André Rodlie
* **Date:** Thu May 30 23:00:46 2024 +0200


### Remove icons
* **Commit:** b06ce4876502d42899a44cfda280971869236bbd
* **Author:** Ole-André Rodlie
* **Date:** Thu May 30 22:58:06 2024 +0200


### Update icons.qrc
* **Commit:** 9c1ac6a8d3b79ac62b721181922c3ec14d533a9d
* **Author:** Ole-André Rodlie
* **Date:** Thu May 30 22:56:38 2024 +0200

Removed unused.

### Update docs
* **Commit:** d0a9235f8ad1c6e4c39faa118d2f5e0443ce2f5a
* **Author:** Ole-André Rodlie
* **Date:** Thu May 30 21:11:10 2024 +0200


### Update SVG export dialog
* **Commit:** a08a279271ffa515523acf8fece1ae08cb9f9066
* **Author:** Ole-André Rodlie
* **Date:** Wed May 29 21:02:59 2024 +0200

Adds check for project compatibility (with SVG) and minor tweaks.

Ref: #174

### Canvas: add SVG compatibility checks
* **Commit:** b4856c3eaf304f146c6d65e39b4d5183aa68c75b
* **Author:** Ole-André Rodlie
* **Date:** Wed May 29 20:40:27 2024 +0200

Adds a function that returns a informational warning if the canvas contains any boxes and/or effects not compatible with SVG export. Can also include notes or recommendations.

This will be used by the SVG exporter to give the user feedback on the project compatibility before exporting.

It's not perfect, but should give the user enough information to adjust the project for export.

Ref: #174

### Update textbox.h
* **Commit:** c5120507261b4aac48a43b5c29bd9e1d966e873e
* **Author:** Ole-André Rodlie
* **Date:** Wed May 29 20:23:09 2024 +0200

Add function 'hasTextEffects()'.

Ref: #174

### BoundingBox: add checkRasterEffectsForSVGSupport()
* **Commit:** 90b52964ebee637592a47c3a333208c7a903ac05
* **Author:** Ole-André Rodlie
* **Date:** Wed May 29 20:21:46 2024 +0200

Adds a function that return (a list of) raster effects (name) not compatible with SVG export.

Currently we only support 'blur' and 'shadow'.

Ref: #174

### Minor
* **Commit:** d4fc7c89917ea4898eaa75b0aa8bdab740e33d2b
* **Author:** Ole-André Rodlie
* **Date:** Sun May 26 22:38:43 2024 +0200


### Update README.md
* **Commit:** 89043bdd080dbbb056c8f2043dc4be85d9983bf8 (tag: v0.9.6-rc2)
* **Author:** Ole-André Rodlie
* **Date:** Sun May 26 04:30:56 2024 +0200


### Update boxsinglewidget.cpp
* **Commit:** c4bc93f4a19de052abfbcec7a88de8a32ccffbb7
* **Author:** Ole-André Rodlie
* **Date:** Sun May 26 04:30:02 2024 +0200

Fix graphProperty pixmap size on Windows.

### Update SDK (Qt 5.15.14)
* **Commit:** 57c31e7a516c8a2fca659c8cad390af4343ab925
* **Author:** Ole-André Rodlie
* **Date:** Sun May 26 03:07:32 2024 +0200


### Update timelinedockwidget.cpp
* **Commit:** ec431c77862a82f1752946d59e7054fbf181aa08
* **Author:** Ole-André Rodlie
* **Date:** Sun May 26 02:37:33 2024 +0200

Allow modifying parameters during playback (and cache new content).

Ref: #161

### Update mainwindow.cpp
* **Commit:** 11691d82d2a53ce6fcba06379aee85a8c988f98b
* **Author:** Ole-André Rodlie
* **Date:** Sun May 26 01:35:05 2024 +0200

Rename "Web Animation (SVG + SMIL)" to "Export SVG". Also add action to toolbar(easy access).

### Update graphanimator.cpp
* **Commit:** 05563a188640e8ee0cc37c4de4805c00006340a2
* **Author:** Ole-André Rodlie
* **Date:** Sun May 26 00:30:49 2024 +0200

Fix keyTimes and add missing "d" attribute for path when exporting SVG.

Fix #165

### Update friction.qss
* **Commit:** bbe85eece0cf854eb5fb33f62b2fd2b74c5dab05
* **Author:** Ole-André Rodlie
* **Date:** Sat May 25 22:00:25 2024 +0200

Fix menu item disabled look.

Ref: #168

### Fix UI/Menu state on project load
* **Commit:** daf6c508265876fe391ba6f4d44ebd5f76308564
* **Author:** Ole-André Rodlie
* **Date:** Sat May 25 20:56:05 2024 +0200

Read scene settings before "sceneCreated" signal.

Fix #51

### Icon fixes (again)
* **Commit:** 4f624e959154d8c0bf15576944b082d0fe489c84
* **Author:** Ole-André Rodlie
* **Date:** Wed May 22 23:05:51 2024 +0200

Also fix performance issue introduced in RC1.

Ref: #152

### Update appdata.xml.in
* **Commit:** e691e5cabe4fe7c63aa757eb0e629b231d5261a7 (tag: v0.9.6-rc1)
* **Author:** Ole-André Rodlie
* **Date:** Mon May 20 00:41:35 2024 +0200


### Update docs
* **Commit:** 9659a28b813a5a396937f876b8776cd246497add
* **Author:** Ole-André Rodlie
* **Date:** Mon May 20 00:41:23 2024 +0200


### Update docs
* **Commit:** 1f995c20c0ce18734fc34b4e4320a8a489625efd
* **Author:** Ole-André Rodlie
* **Date:** Sun May 19 22:46:03 2024 +0200


### Update aboutwidget.cpp
* **Commit:** 8b97cf70b20ff518ead9b1169aa0bccba75fec5e
* **Author:** Ole-André Rodlie
* **Date:** Sun May 19 22:43:59 2024 +0200

Add missing license.

### Update toolbox.cpp
* **Commit:** b1c411a478a04b68dd2c241770f158914cbf3337
* **Author:** Ole-André Rodlie
* **Date:** Sun May 19 00:49:16 2024 +0200

Focus fix.

### Update icon
* **Commit:** b37a66403a3e4851e7dc81576bb85019acf8ebba
* **Author:** Ole-André Rodlie
* **Date:** Sat May 18 17:33:13 2024 +0200


### docs bugfix
* **Commit:** f31d998d734f358f32b67f569174d54a65225234
* **Author:** Ole-André Rodlie
* **Date:** Sat May 18 16:45:15 2024 +0200


### Update docs
* **Commit:** e0addee2f66230399d4d069e9cdd41262a4129f0
* **Author:** Ole-André Rodlie
* **Date:** Sat May 18 03:07:02 2024 +0200


### Update build_vfxplatform_package.sh
* **Commit:** f2252b999194996a243b9f9e5923927cec039968
* **Author:** Ole-André Rodlie
* **Date:** Sat May 18 02:37:42 2024 +0200


### Create desktop_integration.sh
* **Commit:** 29d3839ed1f6eb2118c1dd028fe4c3826e51829f
* **Author:** Ole-André Rodlie
* **Date:** Sat May 18 02:08:21 2024 +0200

Added desktop integration script for Linux portable.

### Update README.md
* **Commit:** f574f6305b72caf7bd7031ae2cf16ac24430748f
* **Author:** Ole-André Rodlie
* **Date:** Sat May 18 01:17:09 2024 +0200


### Update README.md
* **Commit:** 02a41e73a1e5bfd25931381a1eca0cf58e551159
* **Author:** Ole-André Rodlie
* **Date:** Fri May 17 22:32:23 2024 +0200


### Update README.md
* **Commit:** cdae13e36b199c391dda80eca831b0ca1574de16
* **Author:** Ole-André Rodlie
* **Date:** Fri May 17 22:30:32 2024 +0200


### Update README.md
* **Commit:** 45d092e7cc1584c3d9085708b657fe0a2f2390a1
* **Author:** Ole-André Rodlie
* **Date:** Thu May 16 21:17:25 2024 +0200


### Update README.md
* **Commit:** 35902f3dc3404a75a49fbb90d4fad21378c0bfa3
* **Author:** Ole-André Rodlie
* **Date:** Thu May 16 20:06:46 2024 +0200


### Cleanup scripts
* **Commit:** e45f3a37b9ff108f5549b65d4c984656f994d431
* **Author:** Ole-André Rodlie
* **Date:** Thu May 16 19:49:02 2024 +0200

* macOS is not supported
* Drop native Ubuntu packages

### Create build_mxe_ffmpeg.sh
* **Commit:** 0aafe6744483e6d14112eafc8b2ce7d6889e92a1
* **Author:** Ole-André Rodlie
* **Date:** Wed May 15 23:04:12 2024 +0200


### Update Linux SDK
* **Commit:** 0c95802c78a9693aac5035a21137e8f4bec2e2f3
* **Author:** Ole-André Rodlie
* **Date:** Wed May 15 01:04:17 2024 +0200


### Add check for FFmpeg version #135
* **Commit:** 8f717d9b538f43a4768e5d2a821fb80aa1e6f267
* **Author:** Ole-André Rodlie
* **Date:** Tue May 14 16:41:57 2024 +0200


### Update renderwidget.cpp
* **Commit:** d292ce76d5c98cf33d9d6b8d59805efaca806ca4
* **Author:** Ole-André Rodlie
* **Date:** Sun May 12 19:42:03 2024 +0200

Fix progress bar when idle

### Support clear recent files
* **Commit:** dd1eede595704c3603059bd90f1ac5c178980223
* **Author:** Ole-André Rodlie
* **Date:** Sun May 12 15:34:51 2024 +0200

Added "Clear Recent Files" in the edit menu.

Ref: #146

### Check if recent files exists
* **Commit:** a477b827daa8b17b735b7f238fc30511b2ad3c9f
* **Author:** Ole-André Rodlie
* **Date:** Sun May 12 14:44:22 2024 +0200

Ref: #146

### Timeline "settings" => "filters"
* **Commit:** 7c74942123e43f1197f962e7ef8bc422adcb66ef
* **Author:** Ole-André Rodlie
* **Date:** Sun May 12 14:40:39 2024 +0200

The menu only contained filters, so rename and change icon.

Ref: #146

### Update friction-common.cmake
* **Commit:** 8ef6498544928613c8d40a0b19ceb1d40a5995c8
* **Author:** Ole-André Rodlie
* **Date:** Sat May 11 20:43:12 2024 +0200

Remove depend on QtSvg.

### Update boxeslistactionbutton.h
* **Commit:** eb9dcf987699f194ccede39bb5d242616f58cb71
* **Author:** Ole-André Rodlie
* **Date:** Sat May 11 19:50:15 2024 +0200

Focus fix.

### Update icons #91
* **Commit:** 57f99fa1f4b1a27fa117c3b1976035f90ebdac6d
* **Author:** Ole-André Rodlie
* **Date:** Sat May 11 19:40:42 2024 +0200


### Don't ship libqsvg
* **Commit:** a66bc1db503c904d577ed2c2548279ef574cbcbe
* **Author:** Ole-André Rodlie
* **Date:** Sat May 11 19:18:25 2024 +0200

Can't use SVG's for icons so drop libqsvg.

### Qt still can't handle SVG icons ...
* **Commit:** 8427fff351b77b5f8f33318a78a99d0b77dfe443
* **Author:** Ole-André Rodlie
* **Date:** Sat May 11 15:58:06 2024 +0200

Yeah, I give up. Just use theme (png) on everything.

Let's start with a couple of box icons and test.

Ref: #91

### Remove QPixmap's #91
* **Commit:** 351d33754da6d3d0eed42043003971268af1616c
* **Author:** Ole-André Rodlie
* **Date:** Fri May 10 20:36:42 2024 +0200


### More icon stuff #91
* **Commit:** ef9af59fa359f6ea47d5eb0eaed953984e464ad4
* **Author:** Ole-André Rodlie
* **Date:** Fri May 10 20:23:22 2024 +0200


### Update icon #91
* **Commit:** 60d2361b40e52db2388876ea66126f2f781e27a9
* **Author:** Ole-André Rodlie
* **Date:** Fri May 10 19:46:30 2024 +0200


### Update record/keyframe button
* **Commit:** f24de68bc6c8dd59d74308c35aa293d29d1a5380
* **Author:** Ole-André Rodlie
* **Date:** Fri May 10 19:41:15 2024 +0200

#91

### Started icon refactor
* **Commit:** e056a716abafb7bee397e13529cdc9a5f9858665
* **Author:** Ole-André Rodlie
* **Date:** Fri May 10 19:31:05 2024 +0200

Started the migration away from QPixmap for icons.

#91

### Revert "Update boxsinglewidget.cpp"
* **Commit:** f29c06079495b40e58a18fc7dec8630662358195
* **Author:** Ole-André Rodlie
* **Date:** Sun May 5 19:41:03 2024 +0200

This reverts commit 463ce785fe786fbcdb7856d08127b2eeb4bde17c.

### Update boxsinglewidget.cpp
* **Commit:** 463ce785fe786fbcdb7856d08127b2eeb4bde17c
* **Author:** Ole-André Rodlie
* **Date:** Sun May 5 19:17:23 2024 +0200

Try to fix pixmaps (hidpi).

### Update toolbox.cpp
* **Commit:** ab60cfa9183c725046c1d125d10bf023b23895d9
* **Author:** Ole-André Rodlie
* **Date:** Sun May 5 18:38:46 2024 +0200

Fix broken shortcut for local pivot

Ref: #126

### qsvg is now required
* **Commit:** a1a0954c9ff2b2e8e830bc8296a6ec3f4aaea83e
* **Author:** Ole-André Rodlie
* **Date:** Sun May 5 17:50:41 2024 +0200

for icons.

### Misc icon fixes
* **Commit:** bed790515f0681faeaffe7a0e7605679f32a0522
* **Author:** Ole-André Rodlie
* **Date:** Sun May 5 02:38:01 2024 +0200

Remove the legacy icon loader, replace most png icons with svg.

Ref: #91

### Update boxsinglewidget.cpp
* **Commit:** 1316350fdde0b04a8061585af1fa007b62eeb567
* **Author:** Ole-André Rodlie
* **Date:** Sun May 5 01:38:55 2024 +0200

Revert new animator icons, they just don't look as intended when they get too small.

### Update icons
* **Commit:** b9aec3ff477345cded076b83d93198dd75b208a5
* **Author:** Ole-André Rodlie
* **Date:** Sat May 4 02:07:25 2024 +0200


### cmake/qrc fixes
* **Commit:** 8863e6164af88b1b56a8026c4cdc4b61c954ccea
* **Author:** Ole-André Rodlie
* **Date:** Fri May 3 23:08:16 2024 +0200

Fix resources after adding the ui library.

### Update docs
* **Commit:** 45d5bc21109de25984c875427c7d23e20483b018
* **Author:** Ole-André Rodlie
* **Date:** Fri May 3 13:36:38 2024 +0200


### Update main.cpp
* **Commit:** 234dfb392b8f9bd67a8b39c2a66541cc5e7e6f30
* **Author:** Ole-André Rodlie
* **Date:** Fri May 3 13:13:09 2024 +0200


### Update eeffect.cpp
* **Commit:** a340e71897d544afe68b6ab394e05d849cfb3cce
* **Author:** Ole-André Rodlie
* **Date:** Fri May 3 13:06:56 2024 +0200

Fix oopsie :smirk:

### Update appdata.xml.in
* **Commit:** c89479db0380539841a82e1445ef35330708c5cc
* **Author:** Ole-André Rodlie
* **Date:** Thu May 2 17:38:08 2024 +0200


### Update Linux SDK:
* **Commit:** c5ebf4ac4114d1caf9f6bf63239a14e7e744f621
* **Author:** Ole-André Rodlie
* **Date:** Thu May 2 17:13:27 2024 +0200

* Build and bundle libxcb and xcb-util libs
  * Every distro has these libraries, but some (Ubuntu!) don't ship them as default. I would prefer to not distribute system libraries, but I also don't want issue reports regarding failure to launch due to missing whatever
  * Qt prior to 5.15 included the xcb-util libraries
  * https://github.com/AppImage/appimage.github.io/pull/3339
* Update appimagetool (bfe6e0c)
* Update AppImage runtime (1bb1157)

### Build stuff #126
* **Commit:** 1b2af3b48303fabc2733f2f35a269bb15e6cb32f (tag: v0.9.6-beta1)
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 27 00:11:43 2024 +0200


### Update colorsettingswidget.cpp
* **Commit:** ba3c0fe463c59baa5f60089df776bbb038be5ab9
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 22 21:56:40 2024 +0200

Focus bug fixes

### Timeline: Updated UI
* **Commit:** 40fcf984a9dc5057b88967c50abf24621ebcab82
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 21 03:53:56 2024 +0200

Might need some tweaks regarding hidpi.

### Effects: Support custom name
* **Commit:** 9e8b99d01f691b66474e7080a25dc2d33df55f85
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 21 03:38:02 2024 +0200

Effects can now be renamed, this feature bumps the evformat to 27.

Fix #132

### Update friction.qss
* **Commit:** 9c2724b357ef4415697be84cd63705e908aaffa7
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 21 01:57:07 2024 +0200


### Update app support
* **Commit:** 48adb1190f656a342a9a6ac98a73e0f5997c5077
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 21 01:56:32 2024 +0200


### Update boxsinglewidget.cpp
* **Commit:** 9769f8201eaa9ad6ea9e44d71ccadaca0b049c5f
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 21 01:55:40 2024 +0200

Don't wrap label.

### Set proper window title bar color on Windows
* **Commit:** ff07a5e74e2671af068f20709847d027985e0097
* **Author:** Ole-André Rodlie
* **Date:** Thu Apr 18 19:56:22 2024 +0200


### Try to fix icon sizes (again)
* **Commit:** 8f3eebd6cd6627ba79fbe29e9452d07fcfacb6c3
* **Author:** Ole-André Rodlie
* **Date:** Wed Apr 10 01:38:01 2024 +0200

Only apply icon size if dpi not 1.

Icons looks good with no scaling again, and should in theory work in hidpi (not tested).

### Viewer/Toolbox UI/UX changes
* **Commit:** eea2623d1546b08691b9d3bcb18201074bc9893a
* **Author:** Ole-André Rodlie
* **Date:** Wed Apr 10 00:14:36 2024 +0200


### Update colorwidgetshaders.h
* **Commit:** e8bcec9c89fea5ef99f2aeb3e7d33d86f355ac84
* **Author:** Ole-André Rodlie
* **Date:** Tue Apr 9 22:53:16 2024 +0200

Fix Windows build.

### Move color widgets to ui
* **Commit:** 7d634b95194d1b83ee3cff89bf6b2eddd9fb6a49
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 8 19:52:14 2024 +0200


### Move color shaders to core
* **Commit:** bf70d0e89e70bbfbe0c1afb2176ddee832d0cdb5
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 8 19:15:37 2024 +0200


### Move gradient widgets to ui
* **Commit:** 18dd3d618e3c717ccb930fb4d2982193f6b02d3d
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 8 14:12:07 2024 +0200


### Remove unused
* **Commit:** 947fe9e0fe053dcfc1bb37bb36dccd4e6656c7a9
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 8 13:30:32 2024 +0200


### Fill and Stroke: code and ui cleanup
* **Commit:** 1778ffd75d4ccb749cecb3f4f7ba36fc81031bc9
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 8 00:12:08 2024 +0200

Still need to add new icons and move everything to the ui lib and other minor.

### Update icons
* **Commit:** 07cedceb22707be9020eb66da65c54384eb7918d
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 7 00:07:29 2024 +0200

Reduced the size of the split icons, match better against the close icon.

### Update scripts
* **Commit:** 89b4987dc22cdbe931457d411f1d010735f93e96
* **Author:** Ole-André Rodlie
* **Date:** Fri Apr 5 18:14:08 2024 +0200

Mostly minor changes.

### animationwidgetscrollbar => framescrollbar
* **Commit:** 3cc5781400b0bf03117645a8bd2bbaafa663b14f
* **Author:** Ole-André Rodlie
* **Date:** Wed Apr 3 20:46:15 2024 +0200


### And ... move some more to ui
* **Commit:** 5bbb2ba310e152c8fb692ac5019b8840e8894909
* **Author:** Ole-André Rodlie
* **Date:** Wed Apr 3 20:41:21 2024 +0200


### Move even more widgets to ui lib
* **Commit:** c43159e4c839488704a4a96b2aedb46b1f9f43e9
* **Author:** Ole-André Rodlie
* **Date:** Wed Apr 3 19:56:26 2024 +0200


### Move more widgets to ui lib
* **Commit:** fd4bd1cecc18a527d96b0d06260f102dece57705
* **Author:** Ole-André Rodlie
* **Date:** Wed Apr 3 19:31:08 2024 +0200


### Update CMakeLists.txt
* **Commit:** 1fbd60206428947b061d88570680f517fe2dd391
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 1 02:29:38 2024 +0200

Fix Windows build.

### Update build scripts
* **Commit:** 3620bdae927d8632abc1bb65cb2988a13cc7730a
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 1 00:25:52 2024 +0200

Fix #125

### Update .gitignore
* **Commit:** ac976d14f96842d297d4d625f7386860d02b76dc
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 31 22:15:11 2024 +0200


### Update CMakeLists.txt
* **Commit:** eb4d19c39c3f71835c6328f9702e8609e23991a7
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 31 22:11:36 2024 +0200

Sync engine/skia depends is now optional.

### Update scripts
* **Commit:** 46724e49c57a4b54253154b35164643a39fac45d
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 31 21:29:47 2024 +0200

Add scripts to "build" the source tarball.

### Update docs
* **Commit:** 74281e381e7534dc798c6120cf856d9d7fd32895
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 31 19:26:04 2024 +0200


### Update outputsettings.cpp
* **Commit:** 5c819c10f3c239482f2496b2980cac241cd7a9f6
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 30 21:37:57 2024 +0100

Add fallback profile state, else old presets will default to 0 for profile (might be anything).

### Update outputsettingsdialog.cpp
* **Commit:** b630c7921a4cb5ddcb6138fca234588a34a6d727
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 30 21:21:23 2024 +0100


### OutputSettingsDialog: restore video codec profile
* **Commit:** 6f79b49ab5f813bdb0446b2af8b4291c1740661b
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 30 21:09:34 2024 +0100

Ref: #129

### VideoEncoder: check if codec profile is valid
* **Commit:** f6ccd33784ad708fa5a73fcfbff04107ab3fb26c
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 30 18:00:04 2024 +0100

Avoid potential issue with incompatible codec profile.

Ref: #129

### Update outputsettingsdisplaywidget.h
* **Commit:** e2a455abd5b88971e78b6780c225266eb07bc0d4
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 30 17:57:22 2024 +0100


### Render: support video codec profiles
* **Commit:** 29ae228739eb74c2e9314754c71dcf99a0c78d27
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 30 03:54:48 2024 +0100

Adds support for video codec profile:

- H264 (baseline/main/high)
- ProRes (proxy/lt/standard/hq/4444/xq)
- AV1 (main/high/professional)
- VP9 (0/1/2/3)
- MPEG4 (simple/core/main)
- VC1 (simple/main(complex/advanced)

WARNING! This commit bumps the evformat. Project files saved with this commit or later will not be compatible with earlier versions of Friction (or enve).

This commit needs more testing before merged into main.

Ref: #129

### Update videostreamsdata.cpp
* **Commit:** 4a3d1a9d2efb972b17f7ef2c22315a724298f713
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 22 15:57:41 2024 +0100

Honour CPU cap in settings + minor

### Update videostreamsdata.cpp
* **Commit:** 5404439281b32c22ec519f0056e8abd925419b63
* **Author:** Ole-André Rodlie
* **Date:** Thu Mar 21 21:00:29 2024 +0100

Set max threads to 16 for ffmpeg

Fix #128

### Update welcomedialog.cpp
* **Commit:** 80b9413cbeccb21f1d29f48c8d62819599e465a3
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 20 21:43:43 2024 +0100

Auto popup was a bad idea, becomes annoying. Revert to previous state.

### Update docs
* **Commit:** 292f8e595230f660af89d97028759fde5f8ef344
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 17 00:08:53 2024 +0100


### Update assetswidget.h
* **Commit:** cd602ba14559ebb141e4276e03daaf104409b60e
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 16 23:00:42 2024 +0100


### Update CMakeLists.txt
* **Commit:** 26233195381a0cf246bd4fd988cbcbd8c0481c67
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 16 22:46:01 2024 +0100


### Update CMakeLists.txt
* **Commit:** fdac89de8836e92b6ed41bd92c69e984082c54eb
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 16 22:40:57 2024 +0100


### Remove font bundle
* **Commit:** e360109de844e6de1ff3af6ed6c15cd34a34fff4
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 16 21:14:23 2024 +0100


### Minor
* **Commit:** 32c282ff3ba86cc67a22dfd65a7b7c8c7097f97f
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 16 00:21:31 2024 +0100


### cmake stuff
* **Commit:** 99c5b351e64e5ee2754b0c3310f0fbd54b947a9d
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 16 00:16:09 2024 +0100


### Move more dialogs to ui
* **Commit:** ce3471ac2307ebcd4b7af06f133772b9aa824945
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 23:48:18 2024 +0100


### move dialog to ui
* **Commit:** 1732fb1000a7fabd0d97aaaa0d89c57c2b17fe1a
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 23:33:28 2024 +0100


### Move OptimalScrollArea to ui
* **Commit:** ad4d0dcace86bbc39aea5bbaaebd1bed07e6b8ce
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 23:20:33 2024 +0100


### Move scene settings dialog to ui
* **Commit:** af194d27962edeb2e788f8eef21b5a24717b8fdb
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 23:00:54 2024 +0100


### Move to ui
* **Commit:** 0ffc89d12019195cf2663fa5a94f3afa1f949621
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 22:53:24 2024 +0100


### Remove filesourcelist
* **Commit:** 08f6da1c482a9076c12ae5e3ee3970e61eae6445
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 22:19:12 2024 +0100

No need to keep this around anymore.

### core/ui: chmod -x
* **Commit:** d2f7cc608ea3daa9bfe6d41d06da6856787c586b
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 22:12:28 2024 +0100


### app: chmod -x
* **Commit:** 89dc8c9fd98ff3a5d890b970c17148ac06712344
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 22:07:25 2024 +0100


### Move scenechooser to ui
* **Commit:** 0f6cea938f9f53ade4b32a700fac99a48882638c
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 21:57:06 2024 +0100


### chmod
* **Commit:** 81e890baeeca207cb0b4a2f7a3357fccec9a2557
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 21:48:50 2024 +0100


### Move misc to ui
* **Commit:** 9bc3b6353b4ec9b1c773ac6d0435c16e004c33d4
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 21:46:39 2024 +0100


### Removed customfpsdialog
* **Commit:** e698c1dbfb65eccf0fa6ee86c160d9fe1071cddf
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 21:23:27 2024 +0100

Not used

### Move flowlayout to ui
* **Commit:** e9e6897285240119c248e651878cc03969e10ce5
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 21:17:01 2024 +0100


### Move to ui
* **Commit:** 9a95319161d33c09ac31d6b4af03175ff66ab0c6
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 20:40:07 2024 +0100


### Removed boxtypemenu
* **Commit:** 3b8e30b7de65d6c5c161392ab6cf747fedbc3cf1
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 19:44:19 2024 +0100

Does nothing

### Removed keypoint
* **Commit:** 16fb3a6e715fed2af3c8d50069cb265a40297605
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 19:42:57 2024 +0100

Not used

### Move more stuff to core
* **Commit:** 43c488929e486ae0c757ea1a9e278261b6dc17b9
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 19:42:05 2024 +0100


### Move to core
* **Commit:** 5daf69bc458c6878b44750517754c527e939bdc4
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 15 19:07:06 2024 +0100


### Move audio handler to core/Sound
* **Commit:** dfac77a133c7f7486bf003d7842416a23045e619
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 13 22:50:26 2024 +0100


### Removed namedcontainer
* **Commit:** e3dcd4de573ae70631491d6198be39f33de39c21
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 13 22:30:44 2024 +0100

Not used by anything

### Remove Qt 5.12 patches
* **Commit:** dfe97a7a527401a294a7a064e676009e9ec7de3d
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 12 18:49:33 2024 +0100


### Move more to ui lib
* **Commit:** cc1c2aed6a086f8e360623f6d701268ad0d51493
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 12 18:46:03 2024 +0100


### Move misc to ui library
* **Commit:** e7bd9ebc5d1c4a76cda6f053e6fac2972cc35d9d
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 11 23:27:03 2024 +0100


### Move assetswidget to ui library
* **Commit:** 57cab32101bf0b03531b8dd6182c884ec6610d6f
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 11 23:13:44 2024 +0100


### Start moving stuff to ui library
* **Commit:** a96c393da0a360ed14f3ffe8a1bf5b6c0f9c6ca2
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 11 23:08:03 2024 +0100


### Removed skimagecopy
* **Commit:** e51f4a4a57cfaadbca6af0bb2d100790cc46de17
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 11 21:27:29 2024 +0100

It does nothing

### Removed triggerlabel
* **Commit:** 954fd602db65aab6484b15f7cea855b4595ed5b9
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 11 20:41:41 2024 +0100

It's not used by anything and I have no need for it.

### Removed texteffectcaller
* **Commit:** 2a3b327ab60dca8f1d3e6969b6d99fd65843e392
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 11 20:37:58 2024 +0100

It does nothing, so remove.

### Update welcomedialog.cpp
* **Commit:** 88600093989b73474fde1df4776be33a0d800f1a
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 11 20:25:41 2024 +0100

Auto popup recent projects when hover

### Minor build stuff
* **Commit:** 3c010d81a919617933d09f9b1826396d216277c8
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 10 00:44:34 2024 +0100


### Update build scripts
* **Commit:** 1810143835d5343c660ee058afea25759123151a
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 9 23:22:49 2024 +0100


### Minor (icon)
* **Commit:** ee4747a5f1d1d6eeacc178c11c9ce539b126578a
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 9 23:15:29 2024 +0100


### Update build_vfxplatform_package.sh
* **Commit:** 311afe50b398280463e3e02ec5a5eb92857d9e14
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 8 21:47:07 2024 +0100


### Update build scripts
* **Commit:** 047e8423ac63b3f53a3bd22be4f1c2a49cce9b37
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 8 21:04:08 2024 +0100


### Minor
* **Commit:** 67496f4e6e1e94a8a0a888f8ee3903fe3e8395da
* **Author:** Ole-André Rodlie
* **Date:** Thu Mar 7 21:35:35 2024 +0100


### Update Windows build scripts
* **Commit:** 40c10a30d529fdf2eb57be6eddc5b1f4cb392d71
* **Author:** Ole-André Rodlie
* **Date:** Thu Mar 7 20:43:39 2024 +0100


### UI layout fixes
* **Commit:** 26171b18cff6da32736e936bd3e226ee03dcd84a
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 6 22:01:58 2024 +0100


### Fix warnings
* **Commit:** 43affcd3cbf551241a5bc225266bb5df310c8fd2
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 6 22:00:54 2024 +0100


### New UI Layout (WIP)
* **Commit:** 4bfd3a029b7556037ce4ad362ac95c05ae2cfcff
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 6 20:18:52 2024 +0100


### Update friction.qss
* **Commit:** 8c986f718ab440e4149a86d51c0ab558c5b9d731
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 5 23:26:30 2024 +0100


### Update qdoubleslider
* **Commit:** 66e14b36823c6bb49a7a2f53e3d7d19e1def921f
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 5 11:04:20 2024 +0100

Make fitWidthToContent an option, we don't want that function for all widgets.

### Added VLabel
* **Commit:** 0dffa5542b733a657b95ce6353ea45344badcc4e
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 4 21:24:20 2024 +0100


### Create git-backup.sh
* **Commit:** f4b7c20887245750b42973c81b963b327df4129f
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 3 01:50:19 2024 +0100


### Update .gitignore
* **Commit:** 2b024d1df64ceb431bb8db814dad11e01568346a
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 3 01:48:21 2024 +0100


### Update renderwidget.cpp
* **Commit:** 8ae8510c9a188ac4714ca54d8b99a18b6f1dc4eb
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 3 01:37:29 2024 +0100


### Queue: Fix missing labels on project load
* **Commit:** 99c7266a1965c8919ad0e4fff1e63d5d951b05bd
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 1 23:35:21 2024 +0100

Fix the annoying -none- issue

Ref: #119

### Bookmark color shortcut (B) #119
* **Commit:** 269879ac21060d65b09831732a88fc5cfa31615d
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 1 22:32:59 2024 +0100


### Add shortcut for Pivot local/global (P) #119
* **Commit:** a0c4c5eb23e2ca86f8d92bc27e7870237a21d9db
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 1 20:57:45 2024 +0100


### Don't allow link to be dropped on it's target
* **Commit:** e0f4ffd2f3ddf114f897b50c14daf85f245481eb
* **Author:** Ole-André Rodlie
* **Date:** Fri Feb 23 23:49:36 2024 +0100

But allow it to be dropped on other groups.

Fix the fix for Bug 1 in issue #119

### Don't allow drop from linked group
* **Commit:** b080ac4037432230fe9266902d95ffb8c8856a06
* **Author:** Ole-André Rodlie
* **Date:** Fri Feb 23 23:02:01 2024 +0100

Bug 1 in issue #119

### Update uilayout.cpp
* **Commit:** b77c371cc9b55a16ca96632376705f98066edbdf
* **Author:** Ole-André Rodlie
* **Date:** Fri Feb 23 20:46:31 2024 +0100


### Support Ubuntu 24.04 (noble)
* **Commit:** d8d02b7d54da1480b9acd45d7c9f0716fa005cb6
* **Author:** Ole-André Rodlie
* **Date:** Tue Feb 13 20:44:34 2024 +0100


### Update window.cpp
* **Commit:** 57fa0b76549f9c4871579d0bf14667cc7de4443f
* **Author:** Ole-André Rodlie
* **Date:** Tue Feb 13 20:43:25 2024 +0100


### uilayout: support add widget (back) to dock
* **Commit:** 2dc24a9a1a05523551df4d95551e2e19414c9e33
* **Author:** Ole-André Rodlie
* **Date:** Thu Jan 25 23:02:45 2024 +0100


### uilayout: support set dock visibility
* **Commit:** 6a8dc2b3b57349425a83f78d9fae4566c1c04af2
* **Author:** Ole-André Rodlie
* **Date:** Thu Jan 25 22:46:44 2024 +0100


### Use Qt 5.15 on Linux
* **Commit:** bc8fead84470f8ae9b52caebf6e8a8cc027502d5
* **Author:** Ole-André Rodlie
* **Date:** Thu Jan 25 18:18:05 2024 +0100


### Update docs
* **Commit:** 5ac7a59f834949da3429b7b80d284246de915edc
* **Author:** Ole-André Rodlie
* **Date:** Mon Jan 22 23:41:14 2024 +0100


### Remove unused git module
* **Commit:** 30f9682acb3d9e8ee334d2e66d21317f92d1b4ec
* **Author:** Ole-André Rodlie
* **Date:** Mon Jan 22 22:13:20 2024 +0100


### Update CMakeLists.txt
* **Commit:** 6fe5cef8fb0c3bffffbde0cc857e92b9218be5f8
* **Author:** Ole-André Rodlie
* **Date:** Sat Jan 20 21:41:26 2024 +0100


### Update run_vfxplatform.sh
* **Commit:** a75a42b6f73b989c879f1749ecb52f5300dc2663
* **Author:** Ole-André Rodlie
* **Date:** Sat Jan 20 21:28:48 2024 +0100


### Update build_vfxplatform_package.sh
* **Commit:** 6512181bf58812290b244aa1872fc1954b615cea
* **Author:** Ole-André Rodlie
* **Date:** Fri Jan 19 21:56:41 2024 +0100


### Update README.md
* **Commit:** cf41607fa60965fa99af81105a9a7ea7c6d9c153
* **Author:** Ole-André Rodlie
* **Date:** Fri Jan 19 21:10:47 2024 +0100


### Update vfxplatform build
* **Commit:** 95b0015f3635da93ec655dd49f476590cffe1d35
* **Author:** Ole-André Rodlie
* **Date:** Fri Jan 19 20:02:47 2024 +0100


### cmake 3.12
* **Commit:** 3e912157f9a4a26bfce471360d7117ac8e0edaf9
* **Author:** Ole-André Rodlie
* **Date:** Fri Jan 19 18:18:03 2024 +0100


### Update skia
* **Commit:** 8933ed74c191542786742e234530bd28c676bb44
* **Author:** Ole-André Rodlie
* **Date:** Fri Jan 19 17:48:53 2024 +0100


### Update CMakeLists.txt
* **Commit:** 4c30a49b8603ad74fafc635b20f60cc91c8c4bfd
* **Author:** Ole-André Rodlie
* **Date:** Fri Jan 19 17:28:15 2024 +0100


### Update CMakeLists.txt
* **Commit:** ab836750c4a3875fb79f2dbada21d80a71671f5d
* **Author:** Ole-André Rodlie
* **Date:** Fri Jan 19 16:31:54 2024 +0100


### Bulk build changes
* **Commit:** be689d123e2db8c82a7ca9f4b7a6abb505664441
* **Author:** Ole-André Rodlie
* **Date:** Fri Jan 19 16:29:10 2024 +0100


### More build stuff:
* **Commit:** 2aebf034be1866d85788bd8b4b852a7af7f41f73
* **Author:** Ole-André Rodlie
* **Date:** Wed Jan 17 23:19:15 2024 +0100

* Update gperftools
* Update skia
* Update Ubuntu dockers

Fixes build on systems without `python` available, we now use `python3`. Also fixes third-party build warning spam.

More boring build stuff is still pending, but that's for another day (Happy, Happy, Joy, Joy :P ).

### Boring build stuff
* **Commit:** 5a5f7b8d9932ea34fa3fc96efc305d1d4337f7fd
* **Author:** Ole-André Rodlie
* **Date:** Wed Jan 17 19:22:41 2024 +0100

* Adapt docker stuff (Ubuntu) to changes in Friction
* Removed support for Ubuntu Lunar (EOL this month)

### Update uilayout.cpp
* **Commit:** 7fee40bc21cb8b49c10b3bc523e9638ac744b4a1
* **Author:** Ole-André Rodlie
* **Date:** Sun Jan 14 22:43:53 2024 +0100


### Update uilayout.cpp
* **Commit:** f0ba1c13906bc7a3d8a36fd5627b55f49d14b6b2
* **Author:** Ole-André Rodlie
* **Date:** Sun Jan 14 02:16:25 2024 +0100


### uilayout wip
* **Commit:** 8a53b637b0759e12a0220f163623007613942b9d
* **Author:** Ole-André Rodlie
* **Date:** Sun Jan 14 00:59:45 2024 +0100


### Update main.cpp
* **Commit:** 95a66152424352a48845d492f2c7c7724dc77093
* **Author:** Ole-André Rodlie
* **Date:** Sat Jan 13 19:55:00 2024 +0100


### Minor
* **Commit:** 26cabc3852e8eab9a4b5fde086ea2bed21114545
* **Author:** Ole-André Rodlie
* **Date:** Sat Jan 13 19:54:39 2024 +0100


### Gui/Window: also save state on close
* **Commit:** 25e65e05d61a5aee2b6ab5a901add4b43cdafd0b
* **Author:** Ole-André Rodlie
* **Date:** Thu Jan 11 20:55:59 2024 +0100


### Update closablecontainer.cpp
* **Commit:** 3837ab16672f6781338da79a748a8cc00cf0becd
* **Author:** Ole-André Rodlie
* **Date:** Thu Jan 11 20:54:53 2024 +0100


### Render state ui fixes
* **Commit:** 8d789ca67135eafbb851038b526a9ee3a69ea53a
* **Author:** Ole-André Rodlie
* **Date:** Tue Jan 9 21:39:41 2024 +0100

Handle render state properly.

### Added new UI layout class
* **Commit:** 11f28be18a022a76c1dc6177f460286879f98450
* **Author:** Ole-André Rodlie
* **Date:** Sun Jan 7 18:40:08 2024 +0100


### Update icons
* **Commit:** 2060306ff616bae9280fecaac03074e57adb0d98
* **Author:** Ole-André Rodlie
* **Date:** Sun Jan 7 18:38:04 2024 +0100


### Update friction-common.cmake
* **Commit:** ecd17452556f52ff87485a6a91c5f9504a847954
* **Author:** Ole-André Rodlie
* **Date:** Tue Jan 2 21:29:41 2024 +0100

Fail if using unsupported compiler.

### Update CMakeLists.txt
* **Commit:** 3394bd1c1747061f8f69158870f445b3f8b2a33b
* **Author:** Ole-André Rodlie
* **Date:** Tue Jan 2 10:26:38 2024 +0100

Fix Windows build

### Added engine (wip)
* **Commit:** 34012678b8e6cd1a95ac484a2242a97a507d3d65
* **Author:** Ole-André Rodlie
* **Date:** Mon Jan 1 04:38:37 2024 +0100

Only tested on Linux, will probably need fixes on Windows.

### Update build_ci.sh
* **Commit:** 958347f45f09be4e49ce44de0b15cbe0c6f52772
* **Author:** Ole-André Rodlie
* **Date:** Mon Jan 1 03:08:11 2024 +0100


### Update CMakeLists.txt
* **Commit:** 50a98b00b8e98979c45ffac9bff1e2da6d338eab
* **Author:** Ole-André Rodlie
* **Date:** Mon Jan 1 03:07:39 2024 +0100


### Update CMakeLists.txt
* **Commit:** 8fed26a501724a71c9bbdb9493ec0da07d0237c5
* **Author:** Ole-André Rodlie
* **Date:** Mon Jan 1 03:07:15 2024 +0100


### Update friction-common.cmake
* **Commit:** 1809523a74e6942a2cffaeb8b28dfeb119eb76ba
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 23:02:50 2023 +0100


### Update .gitmodules
* **Commit:** 32c985a84fcad80eae83138bc78f6f0e1897dfa4
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 23:02:35 2023 +0100


### Update skia
* **Commit:** 60809d921aeaf3722d8e6dd7bd942ea419a32a47
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 23:02:24 2023 +0100


### Update build_ci.sh
* **Commit:** 18142ae0cb370452d9393b69ce78aa56dbffc624
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 20:01:57 2023 +0100


### Update gperftools
* **Commit:** 65191aba0e88480cb6fc62abf976331e54c75078
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 20:01:36 2023 +0100


### Update CMakeLists.txt
* **Commit:** 7e909c5458f70a8850fa2ea3221294c8377d7d9d
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 19:26:26 2023 +0100


### Update CMakeLists.txt
* **Commit:** c5666fe970e0c404eb39e2922902d0cd5d6328ce
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 19:25:22 2023 +0100


### Update memorychecker.cpp
* **Commit:** 21cdace3da32e7a6c9964e5cef4ef572a550ad6c
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 19:24:48 2023 +0100


### Update gperftools
* **Commit:** 01db02f7c7841b00db4a3c4e842497e510e80692
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 19:13:23 2023 +0100


### Update friction.qss
* **Commit:** 74538b9eb4007a92e9e2d979cb5e23b2c64e0db0
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 19:11:03 2023 +0100


### Create toolbutton.h
* **Commit:** 7063fa16af5c471511b83b5a716d6cf30ad0c9fc
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 19:05:17 2023 +0100


### Assets widget minor
* **Commit:** d56f56408f4ae5b4803a5f7afe504bdea8c965a8
* **Author:** Ole-André Rodlie
* **Date:** Sun Dec 31 19:02:54 2023 +0100


### Bump version
* **Commit:** e5d7263d3db8233d08cb2c550275705204088817
* **Author:** Ole-André Rodlie
* **Date:** Mon Dec 25 14:42:34 2023 +0100

