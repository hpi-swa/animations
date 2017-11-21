updating
updateAnimations: milliseconds

	[[self mutex critical: [
		referenceTime := milliseconds.
		self
			updateCurrentTime;
			updateCurrentValues.
	]]
		on: Error do: [:ex | self emergencyClearFor: ex]]
		on: Halt do: [:ex | self emergencyClearFor: ex].
		
	self tryGarbageCollect.