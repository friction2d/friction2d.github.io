---
title: "Making a path appears progressively (after effect trim path)"
layout: blog
lead: "Here is a quick tip to have alpha channel (transparency) of a layer masks another layer in Friction."
image: "/assets/quicktips/friction-quicktip-02.png"
categories: quicktips
video: https://github.com/user-attachments/assets/5aea63fd-5064-4fe1-b1d4-454facf95b5f
---

Make a path appears progressively by triming it, using the sub-path effect.

Equivalent to After Effect [trim path effect](https://www.youtube.com/watch?v=b0SopiH1nms).

- Path effects are not active by default on path-based layer. To activate it and add the desired effect, you can right click on a layer -> actions -> Path effects -> select an effect (here select the sub-path effect). Path effects are now active on this layer, so you can right click on them in the layer properties to add another one if you want.
- You can now tweak the sub-path effect to trim the stroke (and the fill if there is one).

### Some explanations about the effect logic

The entire stroke length is equal to 100. 

So if your min length parameter is set to 0, and your max length is set to 100, the entire path is shown, here some examples to understand it better : 

* Min = 00 / Max = 00 : nothing is shown
* Min = 00 / Max = 25 : the first quarter of your stroke is shown
* Min = 75 / Max = 100 : the last quarter is shown

The offset parameter change the "origin point" of your stroke, the 0 location

You can also play with this effect on outline, for text animation for example.
