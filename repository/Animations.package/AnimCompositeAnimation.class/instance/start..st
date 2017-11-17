control
start: aDeletionPolicy

	super start: aDeletionPolicy.
	
	self currentAnimation
		start: #deleteWhenFinished;
		register.