---
title: "Flatpak"
layout: default
permalink: documentation/flatpak.html
---

# Flatpak

We believe in a universal package manager for Linux, and that widespread adoption of [Flatpak](https://flatpak.org) is essential for Linux on the desktop.

We offer an official Flatpak repository for developers, beta testers and early adopters.

We will submit stable releases to [Flathub](https://flathub.org) after v1.0.0.

## Branches

We offer different branches depending on how close you want to be to the main development branch.

### Devel

Snapshots from the main branch.

[![Friction Devel Flatpak](https://friction.graphics/assets/flatpak.svg)](https://friction.graphics/repo/friction-devel.flatpakref)

```
flatpak install https://friction.graphics/repo/friction-devel.flatpakref
```
*Add `--user` to avoid system-wide install, default settings might differ between distros.*

### Beta

Latest Beta or RC release.

Will be updated to latest stable after RC, but will move to next beta release when available.

Example: `v1.0.0-beta.3` > `v1.0.0-rc.1` > `v1.0.0` > `v1.1.0-beta.1`


*Branch is pending release of Friction v1.0.0-beta.3.*

## Repository

Included with `.flatpakref`, usually not needed.

```
flatpak remote-add --if-not-exists friction https://friction.graphics/repo/friction.flatpakrepo
```

Flathub is required *(probably already on your system)*.

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
