initialization
setPath: somePoints duration: milliseconds

	self points: somePoints.
	self prototype duration: (milliseconds // (points size - 1)).

	self updateAnimations.