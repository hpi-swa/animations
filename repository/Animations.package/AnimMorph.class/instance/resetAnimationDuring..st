animation control
resetAnimationDuring: block

	self currentAnimation
		stop;
		unregister.
	
	block value.
	
	self updateExtent.
	self resetDrawCache.
	
	self currentAnimation
		start;
		register.