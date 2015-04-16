updating
updateAnimations

	[[self mutex critical: [
		referenceTime := Time millisecondClockValue.
		self
			updateCurrentTime;
			updateCurrentValues.
	]]
		on: Error do: [:ex | self emergencyClearFor: ex]]
		on: Halt do: [:ex | self emergencyClearFor: ex].
		
	self tryGarbageCollect.