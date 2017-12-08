running
setUp

	super setUp.
	
	referenceTime := WorldState lastCycleTime.
	AnimAnimationRegistry value updateAnimations: referenceTime.