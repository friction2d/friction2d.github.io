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

It's possible to create basic shapes using Friction **[Tools panel](userinterface.html#4-tools)**. If it's the first time try creating a rectangle (`shift` + drag to create a square) or an ellipse (`shift` + drag to create a circle) by clicking and dragging the mouse pointer while in the canvas. Release to finish the creation of the shape.

These shapes are vector graphics so they can be edited afterwards so change to the `Object selection tool` and then select the shape. Now:

- in the **[Properties panel](userinterface.html#6-properties)**: and expanding the item it is possible to browse and change all the parameters that define the shape.
- in the **[Fill and Stroke panel](userinterface.html#9-fill-and-stroke)**: it is possible to edit the fill type, color and some parameters related with the Fill and Stroke of the shape.
- in the **[Timeline panel](userinterface.html#5-timeline)**: it is possible to browse and change all the parameters that define the shape in a similar way than in the **[Properties panel](userinterface.html#6-properties)** but here with the timeline to the right so that those parameters can be animated in time and more.

For instance, go to the **[Properties panel](userinterface.html#6-properties)** expand the shape to `Shape > transform > tran   slation > x` and change the values so that the shape moves near the right side of the canvas.

![Change parameter value](/assets/documentation/usage/usage_edit_parameter.png)

Now, go to the **[Fill and Stroke panel](userinterface.html#9-fill-and-stroke)** and under `Fill` change the type from `none` to `fill` and move the color channel sliders to select a nice color.

![Change color value](/assets/documentation/usage/usage_edit_color.png)

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