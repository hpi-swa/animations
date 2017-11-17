updating - private
hasNext

	self loopCount = -1 ifTrue: [^ true].
	self loopCount = 0 ifTrue: [^ false].

	self direction = #forward
		ifTrue: [^ (self current + 1) < self animations size or: [self currentLoop <= self loopCount]].
	
	self direction = #backward
		ifTrue: [^ (self current - 1) > 0 or: [self currentLoop <= self loopCount]].