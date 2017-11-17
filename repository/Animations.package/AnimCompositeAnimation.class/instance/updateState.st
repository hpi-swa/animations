updating - private
updateState

	super updateState.
	
	(self currentAnimation finishedOnce and: [self hasNext])
		ifTrue: [self startNext].