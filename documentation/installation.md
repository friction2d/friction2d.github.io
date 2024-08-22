---
title: "Installation"
layout: default
permalink: documentation/installation.html
---

**DRAFT FOR V1.0**

# Installation

Friction can be installed on Windows (N) 10/11 and most Linux distributions available.

Latest release can be downloaded [here](https://friction.graphics/#download).

## Windows

**Installer:**

1. **Download:** Download the Friction installer `friction-VERSION-setup-win64.exe` file.
2. **Run:** Double-click the installer to start the installation process. If you're using Windows 11, you might need to right-click and select "Run as administrator."
3. **Follow Instructions:** Follow the on-screen prompts to complete the installation.
4. **Launch:** After installation, Friction will be added to your start menu. You can also create a desktop shortcut for quick access.

**Portable:**

1. **Download:** Download the Friction portable archive `friction-VERSION-windows-x64.7z` file.
2. **Extract:** Extract the contents of the archive to a desired location.
3. **Launch:** Double-click the `friction.exe` file to start Friction.

**Note:**

* Both the installer and the portable version of Friction are unsigned, which may trigger security warnings. This is normal and does not indicate a security threat.
* If you're using Windows 10 and you've chosen the portable version, you'll need to have 7-Zip (or compatible software) installed to extract the archive.
* **Portable Settings:** The portable version of Friction stores its settings in the same folder as the `friction.exe` file. If you want to prevent Friction from saving your settings in the same folder, simply delete the `portable.txt` file.

## Linux

Friction is available as an AppImage, RPM and portable/universal archive.

### AppImage

1. **Download:** Download the Friction AppImage `Friction-VERSION.AppImage` file.
2. **Make Executable:** Right-click on the downloaded file, go to "Properties," and select the "Permissions" tab. Check the "Allow executing file as program" option.
3. **Run:** Double-click the AppImage file to launch Friction.

**Note:**

* The Friction AppImage is enhanced for portability and flexibility. It supports storing settings beside the AppImage file.
* Friction will try to use a folder named `Friction-VERSION.AppImage.config` to store settings. Make the AppImage read-only to prevent this behavior.
* On the first run, Friction will prompt you to integrate it with your desktop environment. This will add Friction to your application launcher and associate supported file types with it.

### RPM

1. **Download:** Download the Friction RPM package `friction-VERSION.rpm` file.
2. **Install:** Use your package manager to install the RPM package.

### Portable

1. **Download:** Download the Friction portable archive `friction-VERSION-linux-x86_64.tar.xz` file.
2. **Extract:** Extract the contents of the archive to a desired location.
3. **Run:** Double-click the `friction` file to launch Friction.

**Note:**

* The portable version of Friction stores its settings in the same folder as the `friction` file. If you want to prevent Friction from saving your settings in the same folder, simply delete the `portable.txt` file.
* On the first run, Friction will prompt you to integrate it with your desktop environment. This will add Friction to your application launcher and associate supported file types with it.