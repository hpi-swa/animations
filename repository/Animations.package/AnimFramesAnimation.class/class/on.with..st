instance creation
on: morph with: frames

	^ self new
		target: morph;
		frames: frames copy;
		duration: (frames size - 1) * 100 "milliseconds";
		loopCount: -1;
		property: #animateFrame:;
		yourself