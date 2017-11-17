*animations-control
resumeAnimations

	self animations do: [:ea | ea resume].
	self compositeAnimations do: [:ea | ea resume].