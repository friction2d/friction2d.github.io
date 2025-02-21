---
title: "Alpha masking between layers (after effect track matte)"
layout: blog
lead: "Here is a quick tip to have alpha channel (transparency) of a layer masks another layer in Friction."
image: "/assets/quicktips/friction-quicktip-01.png"
categories: quicktips
video: https://github.com/user-attachments/assets/9a9fe742-52be-4889-bdb7-ff0fd9759c38
---

Here is a quick tip to have alpha channel (transparency) of a layer masks another layer in friction.

[After effect equivalent (track matte)](https://www.youtube.com/watch?v=zgbXGqYMxq4)

- setup two layers, one mask (above) and one to be masked (below)
- group them together
- set the mask (above) blend mode (math operation between this layer and layers below) do DstIn to have it "cut" through the entire composition using alpha (transparency) channel
- to limit the effect to the layer(s) in the group only, promote the group to layer, so the blend modes would not be retain outside of this group, interacting with the rest of the composition. Now the group is not visually interacting with the rest of the scene anymore, like a "scene in the scene".

Here it is ! you can now move freely your group while maintaining any in out animation you made !

A good idea could be to setup custom properties and expressions to be able to control the mask from without the group, and use this group as a template (for in out titles for example)

Happy frictionning ! :D
