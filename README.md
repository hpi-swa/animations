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

## How to Use

### Simple Example

Open a workspace and create a new morph:
```Smalltalk
| myMorph |
myMorph := Morph new topLeft: 100@100; extent: 400@400; openInWorld.
```
Now let this morph disappear. Try the close all unnecessary morphs for performance reasons:
```Smalltalk
myMorph fadeOut.
```
It's gone! Now get it back:
```Smalltalk
myMorph fadeIn.
```
This animation is about 200 milliseconds. If your Squeak image is quite busy it will be not that smooth.

### Basic Animation Concept

In principle, an animation is a timer that has a duration and can run several times to produce loops.
```Smalltalk
AnimAnimation new
   duration: 500; "milliseconds"
   start.
```
You may inspect this animation and look at `currentTime` but nothing will change. There are no extra processes involved to keep the animation running. You need to call `updateCurrentTime:` with an increasing time value frequently to achieve this.

Animations were designed to be used in the Squeak UI process. Therefore, the best reference time to be used is:
```Smalltalk
WorldState lastCycleTime.
```
One possibility (there is a better one) could be to use morph's stepping or a custom process:
```Smalltalk
"Using morph stepping."
MyMorph>>stepTime
   ^ 16 "60 steps per second"

MyMorph>>step
   myAnimations do: [:anim | anim updateCurrentTime].

"Using an extra process."
[
   myAnimations do: [:anim | anim updateCurrentTime].
   (Delay forMilliseconds: 16) wait. "Avoid high load. Get 60 cycles per second."
] fork.
```
Having this, the animation `AnimAnimation` handles just simple time interpretation. You can control the animation with `start`, `stop`, `pause`, `resume`. Here are some other examples:
```Smalltalk
AnimAnimation
   duration: 500; "Always needed!"
   loopCount: 5;
   direction: #backward; "Not used in base class."
   start.

AnimAnimation
   duration: 1000;
   loopCount: -1; "Infinite."
   start: #keepWhenFinished. "Memory management. Not needed for infinite animations. 
                              Not used in base class."
```
You can perform an action after the animation is finished using a block:
```Smalltalk
AnimAnimation
   duration: 500;
   finishBlock: [Transcript cr; show: 'Animation finished!'];
   start.
```

