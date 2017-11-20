# Animations [![Build Status](https://secure.travis-ci.org/hpi-swa/animations.png?branch=master)](http://travis-ci.org/hpi-swa/animations)

1. [How to Install](#how-to-install)
1. [Simple Example](#simple-example)
1. [Basic Animation Concept](#basic-animation-concept)
1. [Variant Animations](#variant-animations)
1. [Property Animations](#property-animations)
1. [How to Register Animations](#let-them-run--how-to-register-animations)
1. [Graphics Animations](#graphics-animations)
1. [Composite Animations](#composite-animations)

In its current development state, the Morphic implementation of Squeak does not support an extensible mechanism that allows visually appealing transitions whenever a morph's state changes, e.g., positon, rotation, color.

This project provides such an extension to Morphic with the following key-features:

* respect timeliness no matter how high the cpu load is
* support any property of a morph that has an accessor such as `#position:`
* allow graphic transitions even without the need to change the state of a morph 

## How to Install

1. Get [Squeak 4.5 or later](http://www.squeak.org) with a recent [CogVM](http://www.mirandabanda.org/files/Cog/VM/) for your operating system.
2. If not already integrated, load [Metacello](https://github.com/dalehenrich/metacello-work). Learn how it [works](https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloUserGuide.md).
3. Finally, load Animations into your Squeak image by executing the following snippet in a workspace:

```Smalltalk
Metacello new
  baseline: 'Animations';
  repository: 'github://hpi-swa/animations/repository';
  load.
```

## Simple Example

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

## Basic Animation Concept

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
## Variant Animations

Variant animations add value interpolation behaviour to animations. There is a start and an end value. During one animation loop `currentValue` changes in this range including the start and the end value itself.
```Smalltalk
AnimVariantAnimation new
   duration: 500;
   startValue: 1;
   endValue: 10;
   start.
```
Having `updateCurrentTime:` called frequently somehow, `updateCurrentValue` can be called frequently too to trigger a callback that allows variant animations to change their internal state or perform other operations:
```Smalltalk
MyVariantAnimation>>updateCurrentValue: newValue
   Transcript cr; show: newValue asString.
```
The value interpolation uses an easing curve that maps a value between 0.0 and 1.0 to another value between 0.0 and 1.0 or maybe more. This can be used to modify the normal linear interpolation and get some more pleasing effects. Overshooting is possible but 1.0 should map to 1.0 because the loop ends there. Here is an example for a custom easing curve:
```Smalltalk
MyEasingCurve>>valueForProgress: aFloat
   ^ aFloat * aFloat

AnimVariantAnimation new
   duration: 500;
   startValue: 1;
   endValue: 10;
   easingCurve: MyEasingCurve new;
   start.
```
Variant animations make use of the `direction` attribute which means the value goes from `endValue` to `startValue` if backwards. An offset can be specified to allow relative value changes:
```Smalltalk
AnimVariantAnimation new
   duration: 500;
   startValue: 1@1;
   endValue: 10@10;
   offsetBlock: [ActiveHand position]; "or just #offset:"
   start.
```
## Property Animations

Property animations are variant animations that are bound to an object and a property. The `updateCurrentValue:` callback will try to send a keyword message to the object with one argument using the property name:
```Smalltalk
AnimPropertyAnimation new
   duration: 500;
   target: myMorph;
   property: #position; "There should be an accessor method #position:."
   startValue: 10@10;
   endValue: 100@100;
   start.
```

## Let them run! — How to register Animations

Animations are meant to be used in the Squeak UI process. There is a reference time called `WorldState class>>lastCycleTime` and some animations can use the world's main loop to keep themselves running. This is achieved by registering the animation in the `AnimAnimationRegistry`:
```Smalltalk
AnimPropertyAnimation new
   duration: 500;
   target: myMorph;
   property: #position;
   startValue: 10@10;
   endValue: 100@100;
   start: #deleteWhenFinished; "Automatic registry clean-up. No need to unregister."
   register. "Add to animation registry."
```
Only `AnimPropertyAnimation` and `AnimGraphicsAnimation` can be registered.

If you want to keep animations after they finished, you need to unregister them manually, for example, when it has stopped:
```Smalltalk
myAnimation isStopped
   ifTrue: [myAnimation unregister].
```
### Using Processes

The animation registry is thread-safe which means that `register` and `unregister` operations are secured and can be called from within any process. However, that process should have a higher priority than the Squeak UI process. Otherwise it could be problematic to acquire the mutex because every world cycle needs it too. 

## Graphics Animations

Graphics animations are variant animations that modify the visual appearance of a morph and all its submorphs doing simple color mappings. Graphic animations need to be registered.
```Smalltalk
AnimAlphaBlendAnimation new
   morph: myMorph;
   duration: 500;
   startValue: 0.0;
   endValue: 1.0;
   start;
   register. "Always needed for graphics animations!"
```
There is no need to reimplement `updateCurrentValue:` but `transformedCanvas:` which returns a custom `AnimColorMappingCanvas` to be used during the drawing routine of morphs:
```Smalltalk
MyAlphaBlendingAnimation>>transformedCanvas: aCanvas
   ^ (MyAlphaBlendingCanvas
      on: aCanvas)
      alpha: self currentValue "Interpolated alpha value."
```
Having this, a simple fade-out animation for morphs can be implemented as follows:
```Smalltalk
MyMorph>>fadeOut
   AnimAlphaBlendAnimation new
      morph: self;
      startValue: 1.0; "totally visible"
      endValue: 0.0; "invisible"
      duration: 200;
      finishBlock: [self hide]; "Executed when animation finished."
      register;
      start: #deleteWhenFinished.
```
Color mappings apply to all submorphs in a morph. To prevent a morph from being color-mapped by its owner use the property `ignoresColorMappings`.

If you want to hold a certain color mapping state, you must not delete an animation when it has finished. Otherwise the color mapping will disappear. An example would be to gray-out or darken a morph using `AnimBrightnessAnimation` or `AnimGrayscaleAnimation`. 

## Composite Animations

You can compose multiple animations into a sequence to be played one after another automatically:

```Smalltalk
AnimCompositeAnimation new
   add: (AnimSaturationAnimation new
      morph: myMorph;
      startValue: 1.0;
      endValue: 0.0;
      duration: 250);
   add: (AnimSaturationAnimation new
      morph: myMorph;
      startValue: 0.0;
      endValue: 1.0;
      duration: 250);
   loopCount: 1;
   register;
   start.
```

Use plain animations to add a delay to the composition:

```Smalltalk
delay := AnimAnimation new
   duration: 1000; "milliseconds"
   yourself.
```

You can add composite animations to composite animations to create complex sequences.

Considering *infinite* animations (i.e. `loopCount == -1`), there is a simple check that tells you to
 * avoid more than one infinite animation in a composition
 * avoid a regular animation *after* an infinite animation in a composition
