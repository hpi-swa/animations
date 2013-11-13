I am the abstract base class for all kinds of animations. If you use me with the world's #lastCycleTime all time, durations a.s.o. should be considered in milliseconds.

I emit the following changed-signals:

#finished ... The animation is done, e.g., after all loops are played.
#stateChanged ... Whenever the state of this animation changes. See #state:. The arguments containt the old and the new one.
#currentLoopChanged ... Whenever #currentLoop changes. Contains the current loop number.
#directionChanged ... Whenever #direction changes. Contains the new direction.

Animations use a custom ReferenceTime as "WorldState lastCycleTime" does not work for busy cycles.

Note: This is some kind of a Squeak port of the Nokia Qt 4.6 Animation Framework.