*animations-control
deleteAnimations

	self animations do: [:ea | ea unregister].
	self compositeAnimations do: [:ea | ea unregister].