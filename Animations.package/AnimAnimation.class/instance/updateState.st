updating - private
updateState

	self isInfinite
		ifTrue: [^ self].
	
	self currentLoop > self loopCount
		ifTrue: [self finish]