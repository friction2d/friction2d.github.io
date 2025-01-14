---
title: "Export"
layout: default
permalink: documentation/export.html
---

# Export

Friction can export to various media formats.

## SVG Animation

Friction can export to SVG animation for use on the web.

Note that what you see in the viewer is not necessarily what you get when exporting an SVG. Only a subset of the features in Friction are supported by the SVG exporter.

*There is ongoing work to support more features in the SVG exporter.*

### Supported features

* Transforms (translation, rotation, scale, shear, pivot and opacity)
* Gradients
* Images
* Texts
* Keyframes
* Graph
* Expressions
* Transform effects (follow path)
* Path effects (trim path and more)
* Raster assets (images/videos)
* Blur effect
* Shadow effect
* Shape morphing
* Masking (Blend Mode `DstIn`)

### Quick preview

Quick preview will export the current scene with default settings *(see export dialog)* and open the preview in the default browser.

Quick preview is available from the file menu and on the toolbar. Shortcut is `Ctrl+F12`.

Preview files are stored in the system temp folder.

### Export dialog

![Export dialog](/assets/documentation/export/export_svg-dialog.png)

Under **Scene** it is possible to set:

* **Scene**: sets the scene to export.

* **Fist frame**: first frame to export.

* **Last frame**: last frame to export.

Under **Options** it is possible to set:

* **File format**: in case the scene has images, it converts them into the selected image file format.

* **Compression**: the compression rate of the image format.

* **Background**: it lets user include or not the scene background color.

* **Loop**: sets the animation as looped if checked, that is, the animation will start again if finished.

* **Notify when done**: if checked a popup warns the user that the export has been done.

* **Fixed Size**: adds `width` and `height` to `viewBox`.

* **Optimize for web**: if available, it lets the user apply some optimization to reduce the `.svg` file size using [SVGO](https://github.com/svg/svgo).

## Video / Audio

Friction can export projects to the most common video formats such as:

* MP4 (H264)
* ProRes (MOV)
* MPEG-4
* AVI
* WebM
* MP3
* raw FLAC
* WAV / WAVE
* OGG
* Audio IFF
* and many more thanks to integrated [FFMEG](https://www.ffmpeg.org/)

Note that **GIF** is not included in the list as other applictions does a much better job.

* Export as MP4 and then use [GIFTuna](https://giftuna.io/) to convert it to GIF
* Export as PNG image sequence and then use [Gifski](https://github.com/sindresorhus/Gifski) to convert it to a GIF.

### Render dialog

![Video/Audio render dialog](/assets/documentation/export/export_video-dialog.png)

Once the **"Add to queue"** button is pressed, the active scene is loaded into the panel. The user can then configure exporting parameters to fine-tune the final output.

### Scene Properties

This section lets the user to set key details about the scene rendering:
- Scene Name
- Frame Range
- Resolution
- FPS (Frames Per Second)

### Profiles

The **Profiles** button allows users to select or create predefined rendering profiles. These profiles may include common settings such as resolution, codec, and bitrate, saving time when rendering multiple scenes with similar configurations.

### Format

It lets users choose the export format for the video. Common options include `.mp4`, `.mov`, `.avi`, and others, depending on the supported formats in **Friction**.

### Destination

It specifies where the rendered video will be saved. Users can browse their file system to select a folder or enter a path manually.

### Render

Finally, clicking the **"Render"** button will start the rendering process for all queued scenes. During rendering:
- A progress bar may appear to indicate the status of the rendering process.
- Users can monitor the estimated time remaining and potential errors.

If necessary, there is also a **"Cancel"** button available to stop the rendering process at any time.

## Image sequence

Friction can export projects to image sequences (TIFF/PNG/JPEG).

Use the default profiles for `PNG` or `TIFF`, or make your own profile. Friction uses `%05d` for image sequences, that means it will prefix `00001` etc to the rendered image files.
