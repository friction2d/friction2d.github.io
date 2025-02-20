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
5) Click on the Frame parameter with the secondary button and choose `Set Expression`
6) Under **Bindings**:
```frame = $frame```

7) Under **Calculate**
```return frame%30```
where "30" is just an example but it is the last frame you want to loop, that is, if your loop is within frame number 0 and frame number 30 then set that number in **Calculate** field.

## Trim path (subpath)
...

## Expression based transformations

### Rotation around circle
...

### Looking at
...