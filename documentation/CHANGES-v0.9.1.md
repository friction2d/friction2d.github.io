---
title: "ChangeLog for v0.9.1"
layout: default
---

### fix viewport when open project during launch
* **Commit:** df7cac5410044b77f4e562ff0bf2fe6d32bfa7ce (tag: v0.9.1)
* **Author:** Ole-André Rodlie
* **Date:** Sun Jul 2 18:03:14 2023 +0200

We need to add a delay using QTimer else the viewport is wrong.

Also add (back) "About Qt" and "Check for updates" in help menu.

### Update friction-ffmpeg.cmake
* **Commit:** c4e1d8c5ca542c0cee4d681bee8945a1c8ed424b
* **Author:** Ole-André Rodlie
* **Date:** Fri Jun 30 23:27:28 2023 +0200

win fix

### shared-mime-info fixes + update some icons
* **Commit:** 837e40e5d713022e541127f2867ce15eb3b17630
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 27 21:44:02 2023 +0200


### Remove unused
* **Commit:** 01416e3b7672956a0957102e668b5df0f2310feb
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 25 20:14:33 2023 +0200


### cmake: Revert static library
* **Commit:** da3dd9f5a94bc356cf2d7de10f07ff94716721bb
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 25 18:39:38 2023 +0200

Static core breaks all kind of things on Windows, don't have time to fix. So, let's go back to the shared library :)

### *.eprof => *.conf
* **Commit:** 786ee71103a2666d05e332ffa306da802673ef67
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 24 20:42:52 2023 +0200

Output profiles are now *.conf instead of *.eprof

### Update animationwidgetscrollbar.cpp
* **Commit:** 25d91b1546404de27098fa76b2f3fc22df1b1ff9
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 24 20:26:38 2023 +0200

Disable "Display Time". This function has not been implemented yet, so ignore for now.

### cmake stuff
* **Commit:** 0614d629e8ce8549ac80ffeb360a6b1bdc9b7937
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 24 19:07:28 2023 +0200

frictioncore is now STATIC, we currently have no need to have this shared, we can easily enable this later when needed.

### eSettings: Use QSettings
* **Commit:** 13118d7c7fefa5f19ce83f4243c5f1197ebfa1b4
* **Author:** Ole-André Rodlie
* **Date:** Fri Jun 23 23:12:22 2023 +0200


### Update effectsloader
* **Commit:** 37e365dccf656009b6c5efe0cbe72cbe43d070b2
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 21 16:30:33 2023 +0200

cleanup + only shaders are detected/loaded.

It does not make sense to support other custom effects/addons at this moment (pre v1), none exists, no documentation exists and users are probably not developers (JS expressions and GLSL is advanced enough).

### Update main.cpp
* **Commit:** 8ce173dcc53097ef6fe25f155f3f7d5f3be34c54
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 21 16:16:15 2023 +0200


### Update README.md
* **Commit:** b94c4fcb76720c5ee32198cc1b37d6d6ae0de639
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 20 00:17:56 2023 +0200


### expressiondialog: preset=>easingPreset + fix
* **Commit:** 7b31f659bd5105c77f8c936d983743813d7e3c66
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 19 22:26:40 2023 +0200


### Update license headers
* **Commit:** 1c7059de377b3057e305f697767ff42367cbd467
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 19 21:28:03 2023 +0200


### RenderWidgets UI fixes
* **Commit:** 8248b5d0bcc6e1d93e7c31dab16d3ebbe7ba3ad1
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 19 21:07:49 2023 +0200


### Update renderwidget
* **Commit:** 9ce0abf68add67e8f2671a04e61d0bc1fd218453
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 19 16:32:29 2023 +0200


### Update mainwindow.cpp
* **Commit:** 94adf330e58abf536ae520c1c00244928ecbf82f
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 19 16:31:22 2023 +0200


### Update appsupport
* **Commit:** b721b57cfedf3f79a6c4c406f8d1708f081e4e04
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 19 16:31:03 2023 +0200


### Qt 5.12 build fix
* **Commit:** 526d9f045d4eb9032cd606f8eea730c98670e04a
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 19 15:16:22 2023 +0200


### minor
* **Commit:** 47c08f968da089806defb20567e3a60bc75eb340
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 18 20:31:32 2023 +0200


### Initial easing presets
* **Commit:** 5e163c2959a29e699551d47e2a955e77d007a93d
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 18 20:02:52 2023 +0200


### Initial support for expression presets
* **Commit:** 762c27aac7975bf3968cfad89e42f0519a56fd0b
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 18 16:13:29 2023 +0200

Not very advanced, but does the job for now.

### Update appsupport
* **Commit:** 4ca2eda4a2556603e4aa701fdcf9a11c987e64aa
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 17 05:21:48 2023 +0200


### Update expressioneditor.h
* **Commit:** c99e33403cb946680efcc2947b2e0283810e7886
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 17 05:21:06 2023 +0200


### Update expression.cpp
* **Commit:** ef12f8fa25ec34ac3e3964a9c0ce2cdbe0d6440d
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 17 01:44:43 2023 +0200

fix for `$frame` + add some debug

### minor
* **Commit:** e80e00c56c2cdf8b37009eb986c63b844ef0313a
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 14 09:07:04 2023 +0200


### windows initial support
* **Commit:** e750449fcc7429a3c3c2f464910007a377ed7a63
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 13 09:53:14 2023 +0200


### Update Dockerfile.el9
* **Commit:** f57841df904f2353e95ecbee4937b083ff3fa7bd
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 13 09:52:19 2023 +0200


### renderwidget: wip
* **Commit:** 7921b55a18be0b740ff729b4e31f3b6b7d9df691
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 13 09:52:08 2023 +0200


### ui: add more splitters (+ other tweaks)
* **Commit:** c7c689e14a250293a094dc20365134ec00d68d43
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 13 00:11:23 2023 +0200


### Update alignwidget.cpp
* **Commit:** ab3a26999c35fdbe96b9478b6a8218f869d35887
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 13 00:08:05 2023 +0200


### Update mkico.sh
* **Commit:** c7f6776f172825ab830c0c7829ad2c3eb94ba200
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 13 00:07:51 2023 +0200


### add win32 icon
* **Commit:** 8edd2a180bf097840244125fa6237af628117a13
* **Author:** Ole-André Rodlie
* **Date:** Mon Jun 12 20:58:30 2023 +0200


### Fixed Color label dpi issues
* **Commit:** 47653905786364d65cfe525bd89a5e34e0d6241f
* **Author:** Sanjay
* **Date:** Sun Jun 11 16:40:42 2023 +0530


### Fixed color widget dpi issue properly
* **Commit:** 2a942a0f9a7c1403a3dda05daede9735a3fd7dfd
* **Author:** Sanjay
* **Date:** Sun Jun 11 16:27:51 2023 +0530


### Fixed hidpi issue with selection of color labels
* **Commit:** 67ef6acadc4bdd3391df56d58f8aa517547c4612
* **Author:** Sanjay
* **Date:** Sun Jun 11 12:13:19 2023 +0530


### Fixed hidpi issue when rendering canvas area in editing mode (not playing timeline)
* **Commit:** 76b77ba27f9a5221c3a64c3085681123e3a3b6c6
* **Author:** Sanjay
* **Date:** Sun Jun 11 11:39:03 2023 +0530

Svaling related issues are still present with other openglwidgets like
colorlabel

### minor
* **Commit:** fe84e7c5a0ba4dbfd5969d0e91f62c41cda5b7ca
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 11 01:34:52 2023 +0200


### Update build scripts
* **Commit:** bf15897e1d76f97aebd8f8b9f0767305374e7ad0
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 23:49:26 2023 +0200


### Update CMakeLists.txt
* **Commit:** a7c08069352c50dd5f3e01083aba0da49390c8b3
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 23:31:22 2023 +0200

write project version to file (for scripting etc).

### restore last open/save dir
* **Commit:** ae9010a79db116d8177e1722fb477d01c2d3fef5
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 22:30:15 2023 +0200


### Update mainwindow.cpp
* **Commit:** ff641588f41478e8e6fa1060bd52bda81ca0e4c8
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 21:47:53 2023 +0200

Don't save backup if document path is empty or a dir

### Update mainwindow.cpp
* **Commit:** f6401dff4056493850df35352ab04329996b3f92
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 21:22:35 2023 +0200

only allow .friction in saveFileAs (regular save will still support .ev).

### Update mainwindow.cpp
* **Commit:** ebe9cd09aa6337f347fe53efcb2c6e6c137ee832
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 21:17:31 2023 +0200


### ui stuff
* **Commit:** e0d79eab6ae553fef095fb941f51e644e6981460
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 20:49:05 2023 +0200


### cleanup welcomedialog
* **Commit:** f97429779c97922c8f017d3630108af9d012ac80
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 19:52:47 2023 +0200


### Update .gitignore
* **Commit:** 5c6b5ec5881db5145b961563a8771568ee68ffda
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 18:51:57 2023 +0200


### Update welcomedialog.cpp
* **Commit:** 6ae6e58004978a5d7167a00545b852a2d85baae6
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 03:52:27 2023 +0200


### Update friction.qss
* **Commit:** 4aaf0c05a7cd7d32e597438dd5e548cf2d02741a
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 03:50:48 2023 +0200


### Update mainwindow.cpp
* **Commit:** d3ca0ec0bad633383492527be269e8ef649b4dba
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 03:50:36 2023 +0200


### Update zipfilesaver.cpp
* **Commit:** 0037c0b8c4c26b0c754a34d561755f1c597904cd
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 03:50:24 2023 +0200


### important changes:
* **Commit:** f667e6850e4caf27d5d72f20fb4ba3b46a51368f
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 10 01:53:44 2023 +0200

* cmake stuff (cleanup/modular)
* .friction is now the official project file format suffix
* .ev is still supported (files with paintbox not supported)
* .xev is disabled
* quazip dependency disabled (only used by XEV)

### minor
* **Commit:** 21656e956f9c34c2f129592f14977e17ddf8cd0e
* **Author:** Ole-André Rodlie
* **Date:** Fri Jun 9 16:00:09 2023 +0200


### Update mainwindow.cpp
* **Commit:** 88ee2db83ab5ffd6117c13806e65004f3aa0ae49
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 8 22:06:09 2023 +0200


### Update friction.qss
* **Commit:** 5fa50ae2119fd93ef07d074e9c73f620c4ca5139
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 8 21:40:08 2023 +0200


### Update colorsettingswidget.cpp
* **Commit:** 8dd8de0e7d1e8a4e236251eba6be1b029e028808
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 8 21:39:54 2023 +0200


### Update colorsettingswidget.h
* **Commit:** f32846a6457b992f19200a5f202da2f4eaf760bb
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 8 21:39:22 2023 +0200


### fix change color mode
* **Commit:** d2b77830ae24e0d4682148cdd0a9388c1aa6c109
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 8 18:45:04 2023 +0200


### add el8 docker
* **Commit:** da716cf016ffa98e60d69c699595cfbf6302d0eb
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 8 12:19:13 2023 +0200


### Update timelinedockwidget
* **Commit:** 57ee066084f2c765733fe32e2a91896b70d846c4
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 8 09:54:07 2023 +0200


### Update build_ubuntu.sh
* **Commit:** ef06a49e7e605dc386f996406534cd47ce237e54
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 8 08:59:54 2023 +0200


### misc ui
* **Commit:** 1331f50b828cc0389936a38be327d7fab9043f57
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 22:42:41 2023 +0200


### remove closesignalingdockwidget
* **Commit:** ff7025965c5f2dbbfdc40401872bfc6a7b528bdc
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 20:33:01 2023 +0200


### minor
* **Commit:** d16337a3a51b7276ba036d9a2e6b3a593d8879e1
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 19:59:17 2023 +0200


### remove brush widget
* **Commit:** 6d08fb466cb78c102678e2bfd16d973d29ab0210
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 19:53:15 2023 +0200


### remove paint stuff
* **Commit:** 9bd950fc099723f3533ea83b0c168c5b6e0bc898
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 19:50:22 2023 +0200


### remove
* **Commit:** 6a640d6dfc2fd826af1e835d10ee3cd85530a0ff
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 19:33:58 2023 +0200


### Update pathboxrenderdata
* **Commit:** b2deaff98806fc134081608046ba9eee1472114d
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 19:11:23 2023 +0200


### misc paint
* **Commit:** 122b3a5a19581fe25a90309e7750034cb635f08f
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 18:51:21 2023 +0200


### Update CMakeLists.txt
* **Commit:** 4eb4bbde248ead36fc1ebef255ea4ce48ee52bf6
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 18:14:42 2023 +0200


### Delete libmypaintincludes.h
* **Commit:** 9a82f0c8a0c974b1e9cbc9d1622649518edb8aef
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 18:14:25 2023 +0200


### remove paintbox
* **Commit:** beb9d983b95a8573edc07acbca9acf9d08fc5366
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 18:08:56 2023 +0200


### remove more paint stuff
* **Commit:** 27d3d209df946ee16ba635d7e3bdd2d32204cd3c
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 18:06:08 2023 +0200


### continue cleanup
* **Commit:** 93f5e3f1ce1333daad8062ebcb885f1c67b95eca
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 12:37:29 2023 +0200


### continue paint removal
* **Commit:** 1e3280131544db83b33a6edb633f02fcd5d557fd
* **Author:** Ole-André Rodlie
* **Date:** Wed Jun 7 10:29:34 2023 +0200


### misc
* **Commit:** 8427bf73e56c2fdb3e0a36bc5663e27d63ca875f
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 6 23:21:33 2023 +0200


### Update mainwindow
* **Commit:** ee38d5edd92853efe17257f9e70b06ff40dddf0b
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 6 23:16:57 2023 +0200


### no paint wip
* **Commit:** 7c4a7ffb12e628afa6829b8a41dd089cf43cb448
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 6 22:31:06 2023 +0200


### minor build stuff
* **Commit:** b213fd835e331db9e6ff7f610bdd4960d6ed9482
* **Author:** Ole-André Rodlie
* **Date:** Tue Jun 6 09:54:22 2023 +0200


### Update README.md
* **Commit:** 353d623e9597cadeddadf729b8e137d8853f8ab6
* **Author:** Ole-André
* **Date:** Sun Jun 4 23:30:46 2023 +0200


### new ui wip
* **Commit:** 8e564e0571b522d85e8f9e07f0a795d7511de392
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 23:26:44 2023 +0200


### Update filesourcelist.cpp
* **Commit:** 41e6d8fa5c792e9b52b482a622e625baa888d887
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 23:25:09 2023 +0200


### Update timelinedockwidget.cpp
* **Commit:** 19fa864e44c7e91a4502ae59b1640471265bec78
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 22:57:52 2023 +0200


### Update qdoubleslider.cpp
* **Commit:** 28e7d08a868b38d1d8a78b36e5e064a04ff8a441
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 22:57:31 2023 +0200


### Update timelinedockwidget
* **Commit:** 528682160180db35877fd193f2b929373070d67f
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 21:21:38 2023 +0200


### Update colorsettingswidget
* **Commit:** 8dff459502ade68499e84e3339afa98ac82a1f07
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 21:20:59 2023 +0200


### Update boxsinglewidget.cpp
* **Commit:** 1c5873e3ed0699ea765a7f9db4c90d5e2f97cbe5
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 05:26:35 2023 +0200


### Update CMakeLists.txt
* **Commit:** 81e3d2515b437a20b0bd6330b6069704a2cf2310
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 05:26:27 2023 +0200


### Update alignwidget.cpp
* **Commit:** 3436df725ff64ef00ed2aaae10894dc9c8ba6ce8
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 05:26:19 2023 +0200


### Update friction.qss
* **Commit:** 0fc6fea85656db9938710270fb0c923e024c171d
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 05:26:12 2023 +0200


### Update widgetwrappernode.h
* **Commit:** db56abd2b6ced8e8c2dec1dc846978120a01de62
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 05:26:06 2023 +0200


### Update appsupport.cpp
* **Commit:** 7f53f0bd5634210435d3c2b4777fe3b2780c74be
* **Author:** Ole-André Rodlie
* **Date:** Sun Jun 4 05:25:55 2023 +0200


### Update widgetwrappernode.cpp
* **Commit:** 5797e1fa7c94aef4ff8873198baaeb46e562ed6a
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 3 19:17:39 2023 +0200


### remove unused
* **Commit:** b2d34d45d4c2cf8c07008034707606fff3ef9c7a
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 3 19:17:28 2023 +0200


### Update centralwidget.cpp
* **Commit:** f1f42452b972c545d0a29a6dc9ea8058b3124c0b
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 3 03:09:59 2023 +0200


### Update exceptions.h
* **Commit:** 4ba8cca4c3d415a4a6ebcd0a53c6b336126da1b7
* **Author:** Ole-André Rodlie
* **Date:** Sat Jun 3 03:09:47 2023 +0200


### build: bump gperftools version
* **Commit:** 4b792d97606b4d17cfb3e8aea856096ad11df24b
* **Author:** Ole-André Rodlie
* **Date:** Fri Jun 2 18:39:16 2023 +0200


### Update gperftools
* **Commit:** 284c1e1ee16cec2988a32c74dfd0856567b2e188
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 1 20:43:53 2023 +0200


### Update build_snapshots.sh
* **Commit:** 261b71e53710d0ab45cf148354e4334b786a31e9
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 1 20:27:52 2023 +0200


### Update README.md
* **Commit:** 6610a88a3ca7d2b86c0cba50bb3bff5b8bb396fd
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 1 19:26:31 2023 +0200


### Update README.md
* **Commit:** 1fc983f6777393d95af796f9c0bba555b9fdaebd
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 1 19:17:44 2023 +0200


### Update README.md
* **Commit:** d6d557f086eb656009d7206ceb4561ee1ae560b2
* **Author:** Ole-André Rodlie
* **Date:** Thu Jun 1 18:50:49 2023 +0200


### Update macOS-build.md
* **Commit:** 8667bcf7eaf9d27c965d672869e01e4e4cf6c44b
* **Author:** Ole-André
* **Date:** Thu Jun 1 17:49:56 2023 +0200

EOL
### Update README.md
* **Commit:** dab13c5359dfc61630a60fd11ee56c5ab9092a4c
* **Author:** Ole-André
* **Date:** Thu Jun 1 17:41:53 2023 +0200


### Update README.md
* **Commit:** e94c07bf00484724db355a6b41e8234704468493
* **Author:** Ole-André Rodlie
* **Date:** Mon May 29 17:42:25 2023 +0200


### Update build_macos.sh
* **Commit:** 61d9a8c865593092ffea87bf253ec27824ec59d1
* **Author:** Ole-André Rodlie
* **Date:** Mon May 29 16:51:12 2023 +0200


### Delete macos.yml
* **Commit:** 713da05e75864784549b1f516402e165c23ea2e3
* **Author:** Ole-André Rodlie
* **Date:** Mon May 29 16:50:44 2023 +0200


### Update build_macos.sh
* **Commit:** f583f97d9a817c6ef767d66703977ed7b9be02c4
* **Author:** Ole-André Rodlie
* **Date:** Mon May 29 01:06:07 2023 +0200


### build stuff
* **Commit:** 0434d35d62bbf4fd4facadc58d41cc43ac6af8a6
* **Author:** Ole-André Rodlie
* **Date:** Sun May 28 16:43:51 2023 +0200

snapshots should have a custom version scheme, easier to upgrade packages etc.

### minor
* **Commit:** 1800043a24fb580914c47b28ef3e5c55eb113a77
* **Author:** Ole-André Rodlie
* **Date:** Sat May 27 23:22:59 2023 +0200


### Update animationwidgetscrollbar.cpp
* **Commit:** e15d1f9beebcd9b162b0a4e2f2830800db852971
* **Author:** Ole-André Rodlie
* **Date:** Sat May 27 23:00:44 2023 +0200

set fixed width on handle.

The handle is still a bit off on some frames. This is a known issue, not introduced by this commit.

### Update hddcachablecachehandler.cpp
* **Commit:** e179246baf55763317609c84f402eeeb5b13edd9
* **Author:** Ole-André Rodlie
* **Date:** Sat May 27 22:14:48 2023 +0200


### Update appsupport.cpp
* **Commit:** 6e7a3bc0ac60da363c9abaa672d8e09243459a45
* **Author:** Ole-André Rodlie
* **Date:** Wed May 24 18:15:39 2023 +0200


### mac minor
* **Commit:** e9ed25d35960dcb7a0340fbbe4b73f72c48bd891
* **Author:** Ole-André Rodlie
* **Date:** Wed May 24 14:12:56 2023 +0200


### Update mainwindow.cpp
* **Commit:** 2b6b7f302cc06167559dd58ae965ca5f88980d3d
* **Author:** Ole-André Rodlie
* **Date:** Tue May 23 22:24:37 2023 +0200


### build + doc
* **Commit:** 8b856b0fbdfb63c99cbd99664933103754674307
* **Author:** Ole-André Rodlie
* **Date:** Sun May 21 23:08:59 2023 +0200


### even more build stuff
* **Commit:** bbcb726d943307064bfa4cf975ecb58241fc114a
* **Author:** Ole-André Rodlie
* **Date:** Sun May 21 21:37:11 2023 +0200


### more build stuff (minor)
* **Commit:** e7c9ac3d5fe18ade63c7ca4916284bcb3f7fd5d3
* **Author:** Ole-André Rodlie
* **Date:** Sun May 21 15:29:26 2023 +0200


### build stuff (RHEL)
* **Commit:** 79be54553edb3896372d9c0de263e7e53fb1340c
* **Author:** Ole-André Rodlie
* **Date:** Sun May 21 03:12:33 2023 +0200


### Update README.md
* **Commit:** 6dce121cae7f0ef6a28cf1efbf2fd1b1771a8226
* **Author:** Ole-André
* **Date:** Mon May 15 00:15:14 2023 +0200


### ColorAnimator::saveColorSVG: support RGBA/A
* **Commit:** c51aa586948b1629ba6c93d56a003ddd6d0956be
* **Author:** Ole-André Rodlie
* **Date:** Sun May 14 04:38:10 2023 +0200

Set RGBA as default.

Fix #19

### ExportSVG: support rect border radius #19
* **Commit:** 49bacdfbfef7b92ea85f47c7c1d0fc8405709b5c
* **Author:** Ole-André Rodlie
* **Date:** Sun May 14 00:54:43 2023 +0200


### Update build_ubuntu.sh
* **Commit:** 576a7cde8b7d686433ba1f6c36cc932b977bd5d1
* **Author:** Ole-André Rodlie
* **Date:** Thu May 11 21:08:19 2023 +0200


### Update README.md
* **Commit:** 60b3ddab539cb535bb00ecab95e111ae606f19cf
* **Author:** Ole-André Rodlie
* **Date:** Thu May 11 18:27:01 2023 +0200


### Update ubuntu.yml
* **Commit:** 250e67f57826c7d82cdaad551a87981da8e28d08
* **Author:** Ole-André
* **Date:** Thu May 11 14:26:35 2023 +0200


### Update build_snapshots.sh
* **Commit:** b6ee738e6f6e7a597f85a07361e64e4023e2f1fa
* **Author:** Ole-André Rodlie
* **Date:** Wed May 10 23:18:13 2023 +0200


### build stuff
* **Commit:** 55bb81bd275eae513c470dea98b20ac94c7b053a
* **Author:** Ole-André Rodlie
* **Date:** Wed May 10 23:14:39 2023 +0200


### Update build_ubuntu.sh
* **Commit:** 6c06783c1133e1750452b6ae8534d3e243d58127
* **Author:** Ole-André Rodlie
* **Date:** Wed May 10 22:06:09 2023 +0200


### Update build_ubuntu.sh
* **Commit:** 26f0b56d3dbb7578b76fafac0fe487c0a7c5d314
* **Author:** Ole-André Rodlie
* **Date:** Wed May 10 21:23:12 2023 +0200


### Update build_ubuntu.sh
* **Commit:** 3b8c1c813faf4c24bd34163b205a38722e44a060
* **Author:** Ole-André Rodlie
* **Date:** Wed May 10 21:19:33 2023 +0200


### minor
* **Commit:** bd9de7367464c42b927d5b1c8fc071ec866a7e67
* **Author:** Ole-André Rodlie
* **Date:** Wed May 10 20:38:37 2023 +0200


### Update exportsvgdialog.cpp
* **Commit:** 36d03b7a409d5d7f708f629f94bf9cf6909e823a
* **Author:** Ole-André Rodlie
* **Date:** Mon May 8 22:40:54 2023 +0200


### Update README.md
* **Commit:** 36bd5707f9f4c35623099be1cb126227d7bd5283
* **Author:** Ole-André
* **Date:** Sun May 7 19:47:24 2023 +0200


### remove unused
* **Commit:** 1356aa41ba0cb041ab8b73b9ca224ec1b5fa1d60
* **Author:** Ole-André Rodlie
* **Date:** Sat May 6 22:54:11 2023 +0200


### Update CMakeLists.txt
* **Commit:** 3d6ca6e63450c01afb222401da690a0cd60b55e9
* **Author:** Ole-André Rodlie
* **Date:** Sat May 6 22:52:23 2023 +0200


### Update align widget
* **Commit:** 83b7367449717bb6d88e6cfac1fdf1a4e126c58d
* **Author:** Ole-André Rodlie
* **Date:** Sat May 6 22:50:41 2023 +0200


### Update exportsvgdialog.cpp
* **Commit:** 66851ff81adbe7ccc7a1a94f9262c3b73c62ddb7
* **Author:** Ole-André Rodlie
* **Date:** Sat May 6 02:22:11 2023 +0200


### remove kra and external apps
* **Commit:** 29e3d9fff69bf6fcd7e42fee9832de0eaea9c97e
* **Author:** Ole-André Rodlie
* **Date:** Sat May 6 01:57:38 2023 +0200


### ui misc (lock docks)
* **Commit:** 2214f27d726e0a22e75a3a7672098f9d2e0b520f
* **Author:** Ole-André Rodlie
* **Date:** Fri May 5 21:54:11 2023 +0200


### Update .gitmodules
* **Commit:** f8e85519865546b2e54698f1c9b4f9808a79368e
* **Author:** Ole-André Rodlie
* **Date:** Wed May 3 20:04:08 2023 +0200


### fix settings dir
* **Commit:** c151b43893dbfcdb94f1619bf117aa5c915fd908
* **Author:** Ole-André Rodlie
* **Date:** Wed May 3 19:34:22 2023 +0200


### split readme
* **Commit:** a0c34986af6e9ab3e794150500e5797b7870e0ae
* **Author:** Ole-André Rodlie
* **Date:** Wed May 3 18:35:46 2023 +0200


### we are now Friction
* **Commit:** 11a5caa4c291f97d676aa59fcf1613fce6a4d9ae
* **Author:** Ole-André Rodlie
* **Date:** Mon May 1 22:59:15 2023 +0200

more changes are needed.

### Update README.md
* **Commit:** 98dccf80e8f6166d1fe90910a45d623594b41d6e
* **Author:** Ole-André Rodlie
* **Date:** Mon May 1 20:58:01 2023 +0200

expect name change soon. Focus on Linux.

### misc (minor)
* **Commit:** f393992174d89172e99942b90400616d1da0c8d6
* **Author:** Ole-André Rodlie
* **Date:** Mon May 1 20:45:29 2023 +0200


### "bug fix":
* **Commit:** 8585b0f1821bcf114396fc7fcab49694adfc2b5a
* **Author:** Ole-André Rodlie
* **Date:** Mon May 1 17:36:17 2023 +0200

if exporting to SVG and scene has a paint layer we crash (SKImage is not usable). Check if SKImage is usable before doing anything.

This does not fix the actual problem, since the paintbox (or whatever) should generate a proper image IMHO(?).

### minor
* **Commit:** 6c10c23f7b5c9b35e523b4faf0cfe572278a5ab5
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 29 02:26:51 2023 +0200


### more styling
* **Commit:** 4b9d70a49d5025d0b5d0d91f5084649b79586ed8
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 29 02:24:27 2023 +0200


### some styling
* **Commit:** a2a2ca0fb9df8b84f55dbd94cdc3bad9e0497da2
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 29 00:12:27 2023 +0200


### SVG Exporter: support WEBP
* **Commit:** 308bd337fcbd2937c3dacd0a78e307bb7e6fd524
* **Author:** Ole-André Rodlie
* **Date:** Thu Apr 27 20:39:29 2023 +0200


### SVG Exporter: support JPEG
* **Commit:** a335ee612fe2c64ea3c436100a3e604024d7de75
* **Author:** Ole-André Rodlie
* **Date:** Wed Apr 26 23:20:36 2023 +0200


### Update evfileio.cpp
* **Commit:** d0f647a31390ea7389b99e01ebafbf9af1308c8c
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 23 19:37:20 2023 +0200

Fix "Save Backup"

### Update timelinedockwidget.cpp
* **Commit:** 4d408d6b1f024cee6b37af3b1221b6c25d3e05b1
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 23 18:59:31 2023 +0200


### ffmpeg fix
* **Commit:** cf0b1465956aa613625ec37fabb40387cb245b9b
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 23 17:18:06 2023 +0200


### Update build_ubuntu.sh
* **Commit:** 1cc9018785b6f76997408d9e22241c1cdab6da94
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 23 17:17:22 2023 +0200


### Output profiles changes:
* **Commit:** 22493da861188dc8bc42b323d7b90e0d401e2521
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 22 18:16:59 2023 +0200

* file suffix is now .eprof
* load/save rewrite
* file format is now qsettings ini

### Update outputsettings.cpp
* **Commit:** 720e7c9bcded6823bf0715b3dfae3c43f9a8c82e
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 17 22:32:26 2023 +0200


### Update outputsettings.h
* **Commit:** f0ab3fc4f33f14365fde5e0ff57fd488138f30f0
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 17 22:31:37 2023 +0200


### config stuff
* **Commit:** 5cf23347c6550ccdbba8faf62635570f3b34239e
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 17 20:28:25 2023 +0200


### fix endl warnings
* **Commit:** 37388d4d374faa9cea48131c90657c07e6bcda10
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 16 00:40:28 2023 +0200


### Update svgexporter.cpp
* **Commit:** 51a6f5eb40ac544f7005255355808f0b15b81f8d
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 16 00:33:03 2023 +0200

Add checkerboard background on preview.

### Update exportsvgdialog.cpp
* **Commit:** 890258a25c437a5d788021427b6a4ac3d78aaf2c
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 16 00:02:56 2023 +0200


### Update CI
* **Commit:** 9cb0d7c7ea040a0b48723f4c6f330274131f66f7
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 15 23:00:49 2023 +0200

we don't need python2 anymore

### Update skia
* **Commit:** ea881d5cd06bc25abda2d03945c1b7af7a2d735a
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 15 22:41:32 2023 +0200


### Update README.md
* **Commit:** bb5289aba9fce6c2e99f6ae096cd3ace8fe2fcd0
* **Author:** Ole-André
* **Date:** Fri Apr 14 17:34:14 2023 +0200


### minor
* **Commit:** fc3e8b430c71e308d02acff5079af535b044d457
* **Author:** Ole-André Rodlie
* **Date:** Mon Apr 10 19:00:35 2023 +0200


### minor
* **Commit:** f150f698ea43fb1c8dd014994811b6f5a22421c9
* **Author:** Ole-André Rodlie
* **Date:** Fri Apr 7 20:30:10 2023 +0200


### Bring back the welcome screen
* **Commit:** 3bf80ca9136c7b14b594c654bda504576ba5eafd
* **Author:** Ole-André Rodlie
* **Date:** Fri Apr 7 17:33:35 2023 +0200


### Update mainwindow.cpp
* **Commit:** 1362340946eb73b563443d11f355955b184f4f15
* **Author:** Ole-André Rodlie
* **Date:** Fri Apr 7 14:19:31 2023 +0200


### more CI
* **Commit:** 7e52fe43eaecc3a23c508786795c52d69bfd5d13
* **Author:** Ole-André Rodlie
* **Date:** Fri Apr 7 13:35:51 2023 +0200


### CI
* **Commit:** 404ca2a6b9a63f24fd8224b9d445287492dc2ac9
* **Author:** Ole-André Rodlie
* **Date:** Fri Apr 7 13:22:58 2023 +0200

remove artifacts, will build releases/snapshots on dedicated HW.

### build stuff
* **Commit:** b57f64b861d996bc6829e80aca4c2c1d6978f489
* **Author:** Ole-André Rodlie
* **Date:** Thu Apr 6 22:46:13 2023 +0200


### Update mainwindow.cpp
* **Commit:** c34d6efce00e039e44a8a60bc556e159079c8a18
* **Author:** Ole-André Rodlie
* **Date:** Thu Apr 6 15:28:29 2023 +0200

add some help menu actions

### misc minor
* **Commit:** f060dfeadf3c193eea53f58555f36386cd49ba36
* **Author:** Ole-André Rodlie
* **Date:** Thu Apr 6 14:56:23 2023 +0200


### minor
* **Commit:** c74973fad8c47229ad2272138903a0560bb193b1
* **Author:** Ole-André Rodlie
* **Date:** Thu Apr 6 14:24:09 2023 +0200


### misc changes
* **Commit:** abad8a1210a32db4b75f80645fa170b5a3df717f
* **Author:** Ole-André Rodlie
* **Date:** Thu Apr 6 13:45:16 2023 +0200


### restore (some) ui state
* **Commit:** 84abb534371a5b7599f7f2d083230b43f2c7fb40
* **Author:** Ole-André Rodlie
* **Date:** Tue Apr 4 23:11:24 2023 +0200


### Update centralwidget.cpp
* **Commit:** c128dacc26e0201f98e3b3136352bd897d1e9e61
* **Author:** Ole-André Rodlie
* **Date:** Tue Apr 4 22:40:34 2023 +0200


### Update enve2d.qss
* **Commit:** 128f1354c75ffcbf31ab87ada58ea3cce50a7c26
* **Author:** Ole-André Rodlie
* **Date:** Tue Apr 4 22:40:05 2023 +0200


### Update macos.yml
* **Commit:** ecd5d55a4c9528a2b543d65a1ab6827ee42d4c1d
* **Author:** Ole-André Rodlie
* **Date:** Tue Apr 4 22:08:05 2023 +0200

Disable mac builds on main for now.

### remove usage of qtwebengine
* **Commit:** fec39f49c9b469963d2a85b12c1cc75ea55b7481
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 2 21:18:18 2023 +0200


### Update canvas.cpp
* **Commit:** 7592e339b6ac6682c00d5b15aa4ef9ddaeee9caa
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 2 20:49:25 2023 +0200


### Update canvas.h
* **Commit:** 002bdf32a1a4a2416710fe71fd2c685775d10afe
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 2 20:47:50 2023 +0200


### ci
* **Commit:** 0853766a5a8f5c0598a2abf2f59b2680d10681d9
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 2 15:50:53 2023 +0200


### Update build_macos.sh
* **Commit:** 753aa044c302092ac4912e1ad452381bb1b28c58
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 2 00:33:09 2023 +0200


### Update macos.yml
* **Commit:** 8dce27146c6f4776c19ebf3d401bd4fbfa5c6244
* **Author:** Ole-André Rodlie
* **Date:** Sun Apr 2 00:31:21 2023 +0200


### mac ci + minor
* **Commit:** da0398c96b797940e8ccdae3569c28c71dadea04
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 1 23:44:26 2023 +0200


### misc (minor)
* **Commit:** 220833b0b6b222f73b0b7c83bfc2291fdf4f458a
* **Author:** Ole-André Rodlie
* **Date:** Sat Apr 1 16:00:05 2023 +0200


### Update README.md
* **Commit:** 2756e11c6e8233088758c13a4f49ebcac1a8c014
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 31 23:11:46 2023 +0200


### Revert "Update ubuntu.yml"
* **Commit:** f79fd54f63c68e545e66ed08a1bb79448ad40d6a
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 31 23:09:22 2023 +0200

This reverts commit fda02d79892377abcfeb548b1a646213a582fa0e.

### Update ubuntu.yml
* **Commit:** fda02d79892377abcfeb548b1a646213a582fa0e
* **Author:** Ole-André
* **Date:** Fri Mar 31 22:44:35 2023 +0200


### Update settingsdialog.cpp
* **Commit:** f35ae7a3f0172f6b135b89298517be3c4fb2647d
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 31 21:59:23 2023 +0200

disable deprecated settings

### mac menu fix
* **Commit:** 37aaefc53a7d49c6671372a490837883f81e0ccc
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 31 21:58:49 2023 +0200


### fix
* **Commit:** d988864060c4fe5ffd898352fd14fed4a7e5565a
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 29 22:14:31 2023 +0200


### mostly doc
* **Commit:** 287c7aa1d6986d9f6f0e1a3d37aec2d4902842d3
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 29 19:48:32 2023 +0200


### build stuff
* **Commit:** dd0f75e86d949c5d0b7d1a58de004f7b1aac207b
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 29 19:17:30 2023 +0200


### drop qmake
* **Commit:** 0c42034445bd8584fc77a0efe3a78f3c2964bdec
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 29 17:57:45 2023 +0200


### Update README.md
* **Commit:** 6082b69c05fc90dbf7d33073b042e94d88118faa
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 29 17:53:34 2023 +0200

fix typo

### Update README.md
* **Commit:** 674314fc587396474643617434ec51c787d8627c
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 29 17:49:36 2023 +0200


### Update README.md
* **Commit:** 47a783f325109923f095db85943652d6074d79c9
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 29 17:48:06 2023 +0200

mac instructions

### Update main.cpp
* **Commit:** 8330eb187b46f55c6d0efd733773b44c9b760187
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 29 17:29:01 2023 +0200

ignore supportsThreadedOpenGL on Mac

### mac app
* **Commit:** a81c5729dc91c6e52654dc99f0de9f33e3a8431c
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 28 23:09:38 2023 +0200


### mac wip
* **Commit:** 3957556c6a8b3c56c67f58d6e9a0bd6b1156e5b4
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 28 22:35:13 2023 +0200

it builds and runs, but not done (need to fix .app, deploy and menu). This probably also breaks linux, will fix later.

### Update enve2d.qss
* **Commit:** 5a4ee9b99342ee8100b3db3448b77a7ca33f1f1c
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 26 17:52:04 2023 +0200


### Update welcomedialog + qss
* **Commit:** 40685290dfe272eab9cfd35234fd6d6ce01442e0
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 26 17:11:45 2023 +0200


### Update welcomedialog
* **Commit:** e8fe6336952abd6785f1bf78aa4c1dd0470e8618
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 26 16:20:01 2023 +0200


### Update mainwindow.cpp
* **Commit:** 36e3c06b0048f3d922c1e6a67094ee10f909f760
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 26 15:15:34 2023 +0200

Don't use keypad for shortcuts

### Update canvas.cpp
* **Commit:** 310174f3e99b81079b98515d34519baf669ba84d
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 26 13:24:16 2023 +0200


### update animationdockwidget
* **Commit:** b787d01759bf79439011f7712946f1c441b6f73f
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 26 01:38:39 2023 +0100


### Update outputsettingsdialog.cpp
* **Commit:** 747ffe6d0c5d8677b3f391a64662b96003b86f40
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 19 21:14:31 2023 +0100

add prores codec to mov container

### avoid breaking existing icons
* **Commit:** 206f606f54c1908d48511c387462e3a9bed4cc1c
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 17 20:48:21 2023 +0100

keep old pixmaps until they are all replaced with qicon.

### Update timelinedockwidget.cpp
* **Commit:** b2e9e12441ebda6a5a7a3496b6b1f326f0fe39e9
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 17 20:35:25 2023 +0100

fix paint current brush color label

### icons
* **Commit:** 0615df4f2b2070b79a4b7ae441604506f52d4194
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 17 19:11:59 2023 +0100


### misc
* **Commit:** 85888bb00665bdb503b89a47792c378d637044da
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 15 22:08:39 2023 +0100


### update timelinedockwidget
* **Commit:** 68cb41e68876b5d7a8aba561ea141aa526379b87
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 15 19:45:28 2023 +0100

far from done, but it's a start...

### more icon stuff
* **Commit:** 5a5bd8fa98f654045285b8dfc491864134a8f63d
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 14 22:05:16 2023 +0100

it never ends ... :P

### icon fixes
* **Commit:** 11bb405201174934061f0550d797f6614ae0e4a1
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 14 19:52:25 2023 +0100


### Update README.md
* **Commit:** 0def58deaa0e718d31001097636efd7e9fd70670
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 13 21:06:53 2023 +0100


### toolbar fixes/changes
* **Commit:** 0f3cebbcd9ce0f5b56f591bd47044793f35977a9
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 13 19:51:54 2023 +0100


### Update mainwindow.cpp
* **Commit:** f2ecfc303cc2814d39542da54e0911ab71aa34e1
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 23:07:54 2023 +0100


### Update mainwindow.h
* **Commit:** 2cb2dec661ebaee08f63763caba9908092e7ec90
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 23:05:30 2023 +0100


### Update layouthandler.cpp
* **Commit:** d38debc97d51d9dc5ae6c04ecea21fed6149c50c
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 22:08:29 2023 +0100


### icons
* **Commit:** 32ab581ddb1e0a9b71fefc68d23663c2ea6f95c2
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 22:08:15 2023 +0100


### welcomedialog changes
* **Commit:** 2e6955b61705c1c532955f3699aaa7070c722f28
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 20:37:24 2023 +0100


### Update welcomedialog.cpp
* **Commit:** 3d2a98caa3e6541ba243004a6018177c0616c55e
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 20:17:42 2023 +0100


### Update memoryhandler.cpp
* **Commit:** 6450ddbe303d06cc328e2952cf1e32f1e12d8e33
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 20:11:33 2023 +0100


### Update main.cpp
* **Commit:** 421bd2ee96cfb2a715693280215e577c9189a2d2
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 20:11:17 2023 +0100


### Update main.cpp
* **Commit:** 0182b59c15af5824914477b497b75d0a413e86b4
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 19:36:46 2023 +0100


### appsupport: add settings
* **Commit:** cc8ad6da5817387fb2b615ad8ec1722492ebe965
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 19:36:30 2023 +0100


### Update make_hicolor.sh
* **Commit:** 72f36c647f547a3d9c3418222a31db297deaeb44
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 17:23:59 2023 +0100


### Update resources.qrc
* **Commit:** dbfeeee349e21bda7ec99765a901e73926dab89e
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 17:17:18 2023 +0100


### Update main.cpp
* **Commit:** 562eef8f874b6c631a99a52495fbf1e0e64c3b70
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 17:17:10 2023 +0100


### Update CMakeLists.txt
* **Commit:** c45677dda0b70494b01c4f1cb21666520e0019d0
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 17:16:27 2023 +0100


### Create hicolor.qrc
* **Commit:** 22728894563bee255a611a6906268531e271293a
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 17:16:15 2023 +0100


### Update make_hicolor.sh
* **Commit:** 81aa8a254e9b1ef76b93601cf507ebd5ff02b415
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 17:15:59 2023 +0100


### icons
* **Commit:** 3832f4db8f35757c9b698f69aa51f8e8aa5de6ea
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 17:15:38 2023 +0100


### icons
* **Commit:** fc851f49f1e46a066a116242b0ee3276edd63149
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 12 16:32:06 2023 +0100


### minor
* **Commit:** 2b60df0bc381a6c26a476527da76d736eaab5ed9
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 22:19:27 2023 +0100


### Update fontswidget.cpp
* **Commit:** 61d873210202e78042dcbd9dd9944a9aced8fc12
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 22:16:35 2023 +0100


### Update CMakeLists.txt
* **Commit:** 50b4a2546e532c41a200691787591c651218f2c0
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 21:57:25 2023 +0100


### icons
* **Commit:** aa80dd1ef26e05806c0959ffa293348d6e0aa153
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 21:55:44 2023 +0100


### Update icons.qrc
* **Commit:** d9a66f24ee20b70f8ca4499e98cbbfff98a86c92
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 21:54:58 2023 +0100


### Update fontswidget.cpp
* **Commit:** bfba4b37a9d6dca180246858aced504ddd798262
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 21:33:56 2023 +0100


### Update fontswidget.h
* **Commit:** 18ca9d29269544611d5fa23df447caab0e53e990
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 21:33:50 2023 +0100


### Update appsupport.cpp
* **Commit:** 5090725f460fe92cb52ec7e600f3b0909adf3298
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 21:33:26 2023 +0100


### icons stuff
* **Commit:** f69a97477c602a2beeb94725d8a8147471c1d5ff
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 11 21:33:15 2023 +0100


### cmake and hicolor stuff
* **Commit:** bdc2d5ef6a4e46239fbe6e931b9153052c8a45d4
* **Author:** Ole-André Rodlie
* **Date:** Wed Mar 8 20:51:48 2023 +0100


### Update usagewidget.cpp
* **Commit:** 339e51d79c6c67b5da3b89ec109ecdd65f547230
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 7 20:23:04 2023 +0100


### Update usagewidget.h
* **Commit:** eb09f99fde51eb4fbe71959f6f56512c250de2f6
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 7 20:22:26 2023 +0100


### added initial appsupport
* **Commit:** 756cdd1241ffb18d314c32a34fc4facd5f1c9ec0
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 7 18:25:18 2023 +0100


### build stuff
* **Commit:** 8cf4176692ec730af19701508d380dfcd22bcdab
* **Author:** Ole-André Rodlie
* **Date:** Tue Mar 7 16:37:18 2023 +0100

use static libtcmalloc, install third-party licenses

### new app icon
* **Commit:** 57d8601322dd95c626444a9cff1ce72ecd9bf0da
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 6 20:28:51 2023 +0100


### Update README.md
* **Commit:** a2ac66619f2702b2a0fba80be35431854bff91ad
* **Author:** Ole-André Rodlie
* **Date:** Mon Mar 6 20:28:22 2023 +0100


### fix hicolor
* **Commit:** a49992220e611b82013f1dbfa15f2583dc98638e
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 22:54:22 2023 +0100


### misc
* **Commit:** 00d9a27ea0e49f715927d20f0018cf8b617f4db4
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 22:38:28 2023 +0100


### Delete Source and building info.md
* **Commit:** 5b6b9d7b797893614aa5ac1959ea977b1db06bc7
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 22:17:12 2023 +0100

the info is outdated. Will add new instructions as we go.

### Update main.cpp
* **Commit:** 87121a765fe2b3c9f0ed56a366fad3e0b225a6a5
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 22:16:07 2023 +0100

disable splash screen. I don't see the point, the app loads fast enough. It also adds another click during startup.

### misc
* **Commit:** d58f8f9ff664217abae21553c71d8a19a45bda73
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 21:51:53 2023 +0100


### make package (deb)
* **Commit:** 27f790427d074d3e6220c56082fc2dc33b33e9b0
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 21:14:04 2023 +0100


### Update README.md
* **Commit:** ea262051104b37dee63b4e772808fc86537a8aaf
* **Author:** Ole-André
* **Date:** Sun Mar 5 20:12:45 2023 +0100


### Revert "Update build_ubuntu.sh"
* **Commit:** 57dcaaefefbaf0ae5ae28312b92a4d01a3543fab
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 18:58:42 2023 +0100

This reverts commit 93d12834a340de823c07b1a3ffa02b52786790d2.

### Update build_ubuntu.sh
* **Commit:** 93d12834a340de823c07b1a3ffa02b52786790d2
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 18:54:19 2023 +0100


### Create ubuntu.yml
* **Commit:** 30becaaa6e740a4668d6d6f83b6fdb62af80dc5c
* **Author:** Ole-André
* **Date:** Sun Mar 5 18:48:41 2023 +0100


### Create build_ubuntu.sh
* **Commit:** 2d6ac8905fe23cee9b8dd49dc230ddc3dfd2c457
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 18:46:45 2023 +0100


### initial make install
* **Commit:** 5e61d5f11f5a4cde151f408c439bdb6ef6f7f674
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 18:00:57 2023 +0100

missing hicolor icons, will add later

### Update CMakeLists.txt
* **Commit:** 3939b2b85853be11e884405d93d5cb4461eaa4b4
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 17:23:57 2023 +0100


### Update CMakeLists.txt
* **Commit:** 0fe7645ca6152e83642a8100765b33255de272b6
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 17:01:08 2023 +0100


### Update README.md
* **Commit:** 26619f28c0d14b10d10a524cfce8cb9ab2683cca
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 16:13:08 2023 +0100


### update submodule
* **Commit:** 27339635210c23a4b34fab4ebedee8a8c62dcfce
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 15:59:46 2023 +0100


### Update README.md
* **Commit:** 92d0ae3033488d59a55160e37b18bf12f874336c
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 15:35:04 2023 +0100


### Update README.md
* **Commit:** 502f2592f6518c058763d280944c360f24c49fac
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 15:27:37 2023 +0100


### minor
* **Commit:** da9d2f940c933a64e30a6d2b338d3bd80748a002
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 14:40:54 2023 +0100


### Update Source and building info.md
* **Commit:** c0b0bd7e2b231fe196d59333df6a5f871268c565
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 14:39:24 2023 +0100


### Update README.md
* **Commit:** 92a3708280470cd0c3bcc5605cd413e77b67f19d
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 04:43:31 2023 +0100


### Update README.md
* **Commit:** 1aee58e366a340aec75e41a473e32b09f388caaa
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 04:42:24 2023 +0100


### Update CMakeLists.txt
* **Commit:** 9dcd387899c4ae3d2a6f2eb19d334fa497436da9
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 04:42:13 2023 +0100


### Update README.md
* **Commit:** b7b736adb97c62ff65d49f40d575224750b751a8
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 04:11:05 2023 +0100


### added submodules
* **Commit:** 2e8665c3e87cb12344907fd4e8f60bf4327f7c37
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 03:42:31 2023 +0100


### removed third_party
* **Commit:** df68b303f12b77b7a9dbe73687d566e4e6b20822
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 03:38:26 2023 +0100


### removed skia
* **Commit:** e987079629e4c456c7b7a78f0b002c2799be7ff2
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 03:37:08 2023 +0100


### remove enve.pro
* **Commit:** 42cc2e45cf5c190b626c86ad60712b9ce30a9a4f
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 03:35:14 2023 +0100


### removed gperftools
* **Commit:** dbe43ac43b96aaab93d2ab6551126fa4c01ed29a
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 03:32:18 2023 +0100


### fix resources
* **Commit:** 07040eb11f14e2599db49a43c0aadb1b17bc6e5d
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 03:09:39 2023 +0100


### remove libmypaint
* **Commit:** 03c69e184a3e56f8e130006e5e9527025f8a9429
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 02:15:43 2023 +0100


### removed qscintilla
* **Commit:** b0a3b37736655e3cbe113a5d833d1216252e7747
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 02:14:54 2023 +0100


### removed quazip
* **Commit:** a31fbc71b639b06ef9259513f86ffe6f59724060
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 02:12:25 2023 +0100


### remove includes
* **Commit:** df661a3d5e837d0c1f7b9190935ac7164391f57f
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 02:05:18 2023 +0100


### Update CMakeLists.txt
* **Commit:** cda3df0982174fd13537c4526f2f2f6683833daa
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 02:02:05 2023 +0100


### Create CMakeLists.txt
* **Commit:** 77cb652c5117adfb91b08a1e404fdab9b6c1c8ae
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 02:02:00 2023 +0100

Initial cmake for app (not done)

### Update .gitignore
* **Commit:** 2b669c00d5b886757ae6635d3e2756aabf4f58a0
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 02:01:22 2023 +0100


### remove build
* **Commit:** 1265a950bf3e38ee83cae03a9d90ca82e1eaafd4
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 00:04:13 2023 +0100


### remove travis
* **Commit:** 348346ce05f45cf8b5f039e179a4a307c839ae9e
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 00:03:32 2023 +0100


### Update README.md
* **Commit:** dc9978fbe82f59fe6ee5519ffc1fd883fc5f8ef0
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 00:01:01 2023 +0100


### Create CMakeLists.txt
* **Commit:** aa5f80feaf7244ac3c0f5cb18191dca897fc3fa3
* **Author:** Ole-André Rodlie
* **Date:** Sun Mar 5 00:00:45 2023 +0100


### Create CMakeLists.txt
* **Commit:** a4675f91905464f369a9b2968e07b871224e05c2
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 4 23:36:18 2023 +0100

initial cmake for core

### update includes
* **Commit:** 7f9d2796b90c1455dba16f6fb45639c268d39987
* **Author:** Ole-André Rodlie
* **Date:** Sat Mar 4 23:33:37 2023 +0100


### Update graphanimator.h
* **Commit:** 63acb712d8b97c566cc24ee7d0f1649b66d3a788
* **Author:** Ole-André Rodlie
* **Date:** Fri Mar 3 23:42:34 2023 +0100

Add missing include
