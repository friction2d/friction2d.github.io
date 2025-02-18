---
title: "Animation techniques"
layout: default
permalink: documentation/animation_techniques.html
---

# Animation techniques

* table of contents
{:toc}

## Loops

It is possible to create **infinite loops** by mixing some Friction features:

1) Create a new scene and set up as desired. It will be a container of just the looped animation.
2) Add the assets and animate them
3) Then switch to the main scene, click on the canvas a select `link scene` choosing the scene that contains the animation you want to loop.
4) select the linked scene object, open the contextual menu (clicking the secondary mouse button) and turn on `Frame remapping`. It will activate a new parameter inside the linked scene called "**Frame**".
5) Click on the `Frame` parameter with the secondary button and choose `Set Expression`.
6) Under **Bindings**:
```frame = $frame```

7) Under **Calculate**
```return frame%30```
where "30" is just an example as it is the length of the loop, that is, if your loop is within frame number 0 and frame number 30 then set that number in **Calculate** field.

## Trim path (subpath)
It is a technique used to animate the "draw a path", that is, the stroke reveals or gets drawn. It works with open or closed paths but they **must be paths**, it doesn't work with circle or rectangle objects; in that case, please, convert them to paths with `Path > Object to path`.

Select the path in the **Canvas**, **Properties panel** or **Timeline hierarchy**, click with the secondary button to open the contextual menu and select `Path Effects > Sub-Path`. Expand it's parameters and play with them.

A simple reveal stroke animation could be done by animating the `max-length` parameter from `0` in one frame to `100` in the final frame. The interpolated frames will show the reveal.

![Playing with offset](/assets/documentation/animation_techniques/anim_techniques_sub-path.svg)

## Trim path (subpath) offset

Another technique would be to play with the `offset` parameter as if, for instance, you set `min-length` to `0`and `max-length` to `10` and animate the `offset` from `0` to `90` in the last frame, the result will show a short piece of stroke moving along the path from start to end.

![Playing with offset](/assets/documentation/animation_techniques/anim_techniques_sub-path_offset.svg)

## Follow path

When animating the movement (transform) of an object, sometimes it is easier to build a path where you want the object to move along.

So, apart from the object it will be needed to draw a vector path where the object will move along. Select the object and add in `Transform` parameters group enable `Transform Effects` and choose `Add Follow Path Effect`. Now, set the path to follow to the name of the created path and animate the parameter `complete` where `0` is the start of the  path and `100` is the end  of it. Optionally it is possible to set `rotate` on so that it automatically rotates following the path direction.

![Playing with offset](/assets/documentation/animation_techniques/anim_techniques_follow-path.svg)

## Masking
...

![Playing with offset](/assets/documentation/animation_techniques/anim_techniques_mask.svg)

## Copy node
Moving a node of an object while holding `shift` to another node of another object **copies** it exact location and the angle and length of both handles.

## Dynamic path operations
<!-- https://www.youtube.com/watch?v=cuJ_LM1twms&t=5s -->
...

## Disolve nodes
<!-- https://www.youtube.com/watch?v=TyeN1OXodcU&list=PLb3wVIJ8v7fGVzg1hon2aH5xgMLBll8-l&index=3 -->
When animating the nodes of a shape, you delete some nodes, it will interpolate the nodes from the keyframe with more nodes to the others with less

## Blend modes
<!-- https://www.youtube.com/watch?v=xvDTJrKWmiE&list=PLb3wVIJ8v7fEx7qs_1lVBu2fsnaz31Iof&index=7 -->
...

## Expression based transformations
...

### Rotation around circle
...

### Looking at
...

## Text effects