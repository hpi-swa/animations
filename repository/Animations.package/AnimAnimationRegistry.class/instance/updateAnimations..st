updating
updateAnimations: milliseconds

	self tryGarbageCollect.
	self updateRegistry.	

	[[
		referenceTime := milliseconds.
		self
			updateCurrentTime;
			updateCurrentValues.
	]
		on: Error do: [:ex | self emergencyClearFor: ex]]
		on: Halt do: [:ex | self emergencyClearFor: ex].