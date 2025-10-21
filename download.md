---
title: "Downloads"
layout: download
permalink: download.html
---

## Requirements

### Minimum hardware

* 4GB RAM
* AVX x86_64 compatible dual core CPU
  * Intel Sandy Bridge Core i3/i5/i7
  * AMD Bulldozer
* OpenGL 3.3 compatible GPU and driver
  * NVIDIA GeForce 8 series (G8x/Tesla)
  * AMD Radeon HD 2000 series (R600/TeraScale 1)
  * Intel HD Graphics 4000 (Ivy Bridge)
* Audio device supporting WASAPI on Windows and PulseAudio on Linux
* Any Mac compatible with macOS Big Sur (11.0) or newer
  * MacBook (2015 or later)
  * MacBook Air (2013 or later)
  * MacBook Pro (Late 2013 or later)
  * Mac mini (2014 or later)
  * iMac (2014 or later)
  * iMac Pro (2017 or later)
  * Mac Pro (2013 or later)

### Recommended hardware

* 16GB RAM
* CPU
  * Intel Kaby Lake Core i5/i7 or newer
  * AMD Ryzen
  * Apple Silicon
* GPU
  * NVIDIA GeForce GTX 1050 or newer
  * AMD Radeon RX 560 or newer
  * Intel (U)HD Graphics 620 or newer
  * Apple Silicon

## Supported systems

* Microsoft Windows (N) 10/11 (x64)
* macOS 11/12/13/14/15 universal
* Red Hat Enterprise Linux 7/8/9/10 (x86_64) and compatible
* Ubuntu Desktop LTS 14/16/18/20/22/24 (x86_64) and compatible

### Notes:

* Visual C++ [Redistributable](https://aka.ms/vs/17/release/vc_redist.x64.exe) 2017 or higher is needed on Windows 10
* macOS binaries support both Apple Silicon and Intel (universal)
* Linux binaries support both X11 and Wayland
* Linux binaries are VFX Platform CY2021+ compatible
* The Nouveau graphics driver is not supported on Linux, use official drivers from NVIDIA

## Known issues

* **Unsigned Binaries:** The binaries are not signed with a digital certificate, which may cause security warnings or require additional steps to run the application for the first time on macOS and Windows.
* **Antialiasing Artifacts:** Some GPUs may exhibit poor or missing antialiasing. To resolve this, navigate to the preferences and set Multi-Sample Anti-Aliasing (MSAA) to 16x.
* **macOS Cache Issues:** Changes to animated items may not display or redraw correctly on macOS due to caching problems. To fix this, you can either clear the cache by pressing `Cmd`+`r` or disable the preview cache from the view menu.

See more issues on [GitHub](https://github.com/friction2d/friction/issues).
