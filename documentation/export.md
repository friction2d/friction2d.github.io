# Export

Friction can export to various media formats.

## SVG Animation

Friction can export projects to [SVG+SMIL](https://en.wikipedia.org/wiki/Synchronized_Multimedia_Integration_Language#SMIL+SVG).

Note that what you see in the viewer is not necessarily what you get when exporting an SVG. Only a subset of the features in Friction are supported by the SVG exporter.

*There is ongoing work to support more features in the SVG exporter.*

### Supported features

* Keyframes
* Graph
* Expressions
* Path effects
* Raster assets (images/videos)
* Blur effect
* Shadow effect

### Quick preview

Quick preview will export the current scene with default settings *(see export dialog)* and open the preview in the default browser.

Quick preview is available from the file menu and on the toolbar. Shortcut is `Ctrl+F12`.

Preview files are stored in the system temp folder.

### Export dialog

...


### Post export

SVG's exported from Friction is not optimized and may include unused defines and redundant groups.

It's recommended to use [SVGO](https://svgo.dev/) as a final step to optimize the SVG before deployment.

#### SVGO usage

The recommended configuration for Friction is:

```
export default {
  plugins: [
    'collapseGroups',
    'removeUselessDefs',
    'removeEmptyContainers',
  ],
};
```

Save this to a file *(`friction.mjs`)*.

Then optimize your SVG with the following command:

```
svgo --config friction.mjs -i INPUT -o OUTPUT
```

Also checkout the website [SVGOM](https://svgomg.net/).

## Video

Friction can export projects to the most common video formats.

...

## Image sequence

Friction can export projects to image sequences (TIFF/PNG/JPEG).

...
