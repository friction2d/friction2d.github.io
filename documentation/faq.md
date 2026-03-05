---
title: "Frequently asked questions"
layout: documentation
permalink: documentation/faq.html
categories: documentation
cover: question.svg
order: 11
---

# Frequently Asked Questions (FAQ)

* table of contents
{:toc}

### What is Friction?

Friction is an open-source 2D animation and motion graphics software. It is designed for animators and graphic designers who need a powerful and flexible tool for vector and bitmap animation.

### Is Friction open source?

Yes, Friction is licensed under the [GPL version 3](https://www.gnu.org/licenses/gpl-3.0.en.html) (`GPL-3.0-only`).

### Can I use Friction for commercial projects?

Yes, there are no restrictions, you can use Friction for anything you want.

### What operating systems does Friction support?

Friction is available for Linux, Windows and macOS.

* x86_64 on Linux and Windows
* x86_64 and ARM64 on macOS

**Note**: macOS support is in beta, expect more issues compared to Linux or Windows.

See [download](/download.html#requirements) section for updated information.

### Can I contribute to Friction's development?

Absolutely! Contributions are welcome in the form of code, documentation, bug reports, and feature suggestions. You can check our repositories at:

- [GitHub](https://github.com/friction2d/friction)
- [CodeBerg](https://codeberg.org/friction/friction)

### Does Friction support scripting?

Yes, Friction supports scripting through [ECMAScript](https://en.wikipedia.org/wiki/ECMAScript). You can create custom scripts to automate tasks and control animations dynamically.

### How can I report a bug or request a feature?

You can report bugs or request new features on the [GitHub Issues page](https://github.com/friction2d/friction/issues). Please provide as much detail as possible, including steps to reproduce the issue.

### Does Friction support GPU acceleration?

Yes, Friction uses [Skia](https://skia.org/) for rendering, which takes advantage of GPU acceleration when available.

### Is Friction an After Effects alternative?

Friction is a specialized vector-based animation tool designed for motion graphics. While it shares some conceptual similarities with tools like Adobe After Effects or Adobe Animate, it is built from the ground up with its own unique workflow.

* **For Motion Graphics:** Friction offers a streamlined, vector-first approach that may fit your workflow perfectly.
* **For Visual Effects (VFX):** If your work focuses on compositing and VFX, we recommend exploring Natron and/or Blender.

### Do the Expression Editor has a valueAtTime() function?

At the moment **Friction** has not option to retrieve information from another frame but the actual but I will may be introduced in the next `v1.1`.

### Does Friction support Lottie animations?

No, while Lottie has its great advantages, **Friction** uses SVG animations with [**SMIL**](https://www.w3.org/TR/REC-smil/) *(Synchronized Multimedia Integration Language)* supported by the W3 Consortium.

Currently we have no plans to support Lottie, we only support/promote web standards.

### Is Friction a fork of enve?

Yes, **Friction** forked from [enve](https://maurycyliebner.github.io/) in February 2023. Most users of enve should be able to move to **Friction**, note that some features have been removed or changed. enve was a starting point for **Friction**, the codebase will change/differ more and more with each release.

### Why is memory usage higher on Apple Silicon vs. Intel?

On Apple Silicon, macOS uses a Unified Memory Architecture. In this system, the system RAM is shared dynamically between the CPU and the GPU.

The reported memory usage for Friction includes both the application data (RAM) and the graphical resources (VRAM). On Intel Macs these two values are tracked separately.

---

If you have more questions, feel free to ask in our **[Friction community](https://friction.graphics/community.html)** or open an issue on our repos.

