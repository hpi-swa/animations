*animations-control
pauseAnimations

	self animations do: [:ea | ea pause].
	self compositeAnimations do: [:ea | ea pause].