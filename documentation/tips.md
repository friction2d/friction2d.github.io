---
title: "Tips"
layout: default
permalink: documentation/tips.html
---

# Tips

* table of contents
{:toc}

## Timeline navigation

![Timeline navigation](/assets/documentation/usage/usage_01.png)

- The upper line allows you to change the current frame.
- The lower line allows you to change a range of visible frames of the timeline.

Use the mouse wheel while hovering over the bottom scroll bar to scale the timeline.

## Changing values

![Timeline navigation](/assets/documentation/usage/usage_02.png)

You can change the values by clicking in the value box and moving the cursor sideways or by clicking in the value box and using the keyboard to enter the values.

## Adding keyframes

![Timeline navigation](/assets/documentation/usage/usage_03.png)

To activate the recording of values, click on the record button next to the property name.

Keyframes are automatically added for properties with value registration enabled each time their value is changed.

## Canvas shortcuts

For selected objects it is possible to use the following Keyboard shortcuts:

- `G`: Move
- `R`: Rotate
- `S`: Scale

![Timeline navigation](/assets/documentation/usage/usage_04.png)

There is a way of limiting the translation or scale to just one axis by using the following shortcuts:

- `X`: Horizontal
- `Y`: Vertical

![Timeline navigation](/assets/documentation/usage/usage_05.png)

It is possible to use numerical values when transforming objects, just type the desired numbers:

![Timeline navigation](/assets/documentation/usage/usage_06.png)

To **apply** a transformation press `ENTER` or release the mouse.

To **cancel** press `Esc` or the right mouse button.

## Pivots

Every object has a pivot that can be moved to transform the object from its axis, for instance if you rotate the object by pressing `R` shortcut:

![Timeline navigation](/assets/documentation/usage/usage_07.png)

## Grouping

**Groups** combine or wrap objects into a new object, this new object has its own transform matrix:

![Timeline navigation](/assets/documentation/usage/usage_08.png)

**Layers** are special group types. You should use them whenever you want the group to be rasterized before being drawn or when you need to apply an effect to the group. For instance, you can promote a group to layer and then apply `Blur` which is a `Raster Effect`:

![Timeline navigation](/assets/documentation/usage/usage_09.png)


## Duplicating

Instead of "copy" and "paste", you can use **duplicate** and get an exact copy of your duplicated object (transform, colors, shapes,...):

![Timeline navigation](/assets/documentation/usage/usage_10.png)

Keyframes can be also duplicated when working in the Timeline, select a keyframe, place the time line at the desired frame and duplicate it:

![Timeline navigation](/assets/documentation/usage/usage_11.png)

– `Shift + D` duplicate and move frame
– `Ctrl + D` copy and paste in actual frame

## Blend modes

![Timeline navigation](/assets/documentation/usage/usage_12.png)
Each object can be drawn on its parent **layer** using different compositing modes. You can select the composition mode in the combo box next to the object name.

**Remember that objects are drawn on their first source layer, which means that layer groups do not influence the way objects are drawn**

## Alpha Mask

To create a simple alpha mask you need at least two objects, one of which will act as a mask.

You have to put both objects inside a **layer** so that the mask does not influence the objects outside the layer. That is, grouping them is not enough, you need to promote the group to layer:

![Promote to layer button](/assets/documentation/usage/usage_14b.png)

For instance, if you want the rounded green rectangle to mask the star below:

![Timeline navigation](/assets/documentation/usage/usage_15.png)

You will need to set the rectangle layer (the rectangle shape itself) blend mode to `DstIn` and you will get the following mask:

![Timeline navigation](/assets/documentation/usage/usage_16.png)

In case you want the inverted mask use `DstOut`:

![Timeline navigation](/assets/documentation/usage/usage_17.png)

## Visibility range

You can use the visibility range to control the visibility of an object. 

![Timeline navigation](/assets/documentation/usage/usage_18.png)

Objects can just have 1 visibility range so if you select "Split" then a new object will be created

## Graph Editor

By default the interpolation between keyframes is set to **linear** when setting them with the parameter fields or within the canvas if editing transformations. Friction interpolation system is based on graphs, that means you could set up complex interpolations based on arcs and Bezier curves. In order to edit them the user must select a parameter and hit the `Graph button` to change from timeline "Keyframes view" to "Graph view":

![Timeline navigation](/assets/documentation/usage/usage_19.png)

In the new view it is possible to select, move and set the keyframe node tangents to the desired curve by using the following tools:

![Timeline navigation](/assets/documentation/usage/usage_20.png)

Some tools may need the user to select two nodes to work as it will affect the "curve segment" and not just a node.

![Timeline navigation](/assets/documentation/usage/usage_21.png)

It is possible to preview more than one parameter at the time by pressing `shift` in the keyboard and clicking the desired parameter with the left mouse button.

![Timeline navigation](/assets/documentation/usage/usage_22.png)
