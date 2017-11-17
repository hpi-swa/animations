*animations-control
stopAnimations

	self animations do: [:ea | ea stop].
	self compositeAnimations do: [:ea | ea stop].