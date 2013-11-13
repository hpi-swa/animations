# Animations

In its current development state, the Morphic implementation of Squeak does not support an extensible mechanism that allows visually appealing transitions whenever a morph's state changes, e.g., positon, rotation, color.

This project provides such an extension to Morphic with the following key-features:

* respect timeliness no matter how high the cpu load is
* support any property of a morph that has an accessor such as `#position:`
* allow graphic transitions even without the need to change the state of a morph 

## How to Install

Just load the `Animations` package into your Squeak image.

**Warning:** Once installed, unloading will probably cause your image to stop rendering, which means it will hang. That is because some very important messages (such as `WorldState>>doOneCycleFor:`) were overridden and could get lost on unloading.

There are the following sub-packages:

* Animations-Core ... core implementation
* Animations-Canvas ... canvases to be used in graphics animations
* Animations-Animations ... some example graphics animations
* Animations-Tests ... tests for all packages
