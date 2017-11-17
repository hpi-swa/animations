control - private
toStart

	super toStart.

	self direction = #forward
		ifTrue: [self current: 1].
	self direction = #backward
		ifTrue: [self current: self animations size].