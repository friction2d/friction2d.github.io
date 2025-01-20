---
title: "Usage"
layout: default
permalink: documentation/usage.html
---

# Basic Usage

* table of contents
{:toc}

After learning how the [User Interface](userinterface.html) works, it is time to create a project, create or add some assets and start animating them.

It is important to understand that **Friction is not a vector or raster drawing software but an animation one**.

Sure it can create some basic vector based shapes such as rectangles, squares, ellipses, circles, shapes based on nodes and Bezier curves, hand drawn curves or even it's possible to import bitmap images (raster) but there are lot of drawing tools that a regular designer would miss inside Friction if he insists on looking for them. Being that said, it is highly suggested to design the assets out of Friction and then import or link them into the software.

Some suggested tools for designing assets could be the following:

- **Vector graphics design**
    - **Inkscape** (open source): [https://inkscape.org/](https://inkscape.org/)
    - any proprietary, paid or free software capable of exporting to SVG vector graphics file.

- **Bitmap graphic design**
    - **Krita** (open source): [https://krita.org/](https://krita.org/)
    - **Gimp** (open source): [https://www.gimp.org/](https://www.gimp.org/)
    - any proprietary, paid or free software capable of exporting to JPEG or PNG image file.

## 1. Project and first scene creation

After opening Friction, the Canvas panel will prompt the user to:
- **New**: create a new project.
- **Open**: open an existing Friction project choosing it using your OS file browser.
- **Recent files**: open an existing Friction project previously opened. Click the button to get a list of the available projects ordered by date (newest to oldest).

![Startup window](/assets/documentation/usage/usage_startup.png)

Assuming it is the first time the user opens Friction, click on `New` to create a new project. A window will popup showing the Scene Properties:

![Scene Properties window](/assets/documentation/usage/usage_scene_properties.png)

An unique Friction project is capable to have any number of scenes but the first time a project is created it prompts the user to create the first one.

It is possible to set the parameters that define a scene (them all could be modified later):
- dimensions of the canvas: **Width** and **Height** expressed in pixels
- **Duration** of the scene: setting the first frame (usually 0) and the last one expressed in `frames` or `seconds`. Take into account that Friction internally works if `frames` so if the user selects `seconds` it will use the following parameter, FPS, to make the conversion into `frames`.
- **FPS** (Frames Per Second): number of frames per second.
- **Background**: a RGB color that defines the background scene color. Note that it allows setting a "transparent" color by setting the `Alpha color`to 0.

Pressing the `...` buttons will list some default and commonly used values or custom ones used in previous projects.

When happy with the settings, the user can press on `OK` to create the very first scene.

![Blank scene](/assets/documentation/usage/usage_scene_blank.png)

At this point other panels and all tools are enabled to let the user start creating or adding (importing or linking) assets to the scene canvas.

## Canvas zooming and panning

As in other 2D graphical software the canvas can be navigated with two types of movements:

- **Pan**: click and drag with the middle mouse button or use two fingers on your trackpad.

- **Zoom**: use the mouse wheel or using two fingers on your trackpad "pinch in" to zoom in or "pinch out" to zoom out.

In **`View > Zoom`** there are additional ways of navigating the canvas such as `Fit to canvas` or `Reset Zoom` and them all can also be triggered using [Keyboard Shortcuts](shortcuts.html).

## 2. Creating assets

Creating

modifying colors/parameters

## 3. Importing and linking

import
link

## 4. Basic animation

keyframes

graph view

## 5. Preview

Inside Friction

cache...

## 6. Effects, shaders, ...

## 7. Export
SVG
or rendering
More in depth: [Export chapter](export.html)

## 8. Saving the project

## 9. Advanced

### tools
### alignment
### layouts

## 10. Other learning resources

- tutorials
- video tutorials
- other