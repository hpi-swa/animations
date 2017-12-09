control - private
finish

	self state: #stopped.
	
	self resetAfterFinished
		ifTrue: [self toStart]
		ifFalse: [self toEnd].
		
	self
		finishedOnce: true;
		changed: #finished.
		
	self evaluateFinishBlock.