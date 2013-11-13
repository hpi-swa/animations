control - private
finish

	self stop.
	
	self resetAfterFinished
		ifTrue: [self toStart]
		ifFalse: [self toEnd].
		
	self
		finishedOnce: true;
		changed: #finished.
		
	self finishBlock value.