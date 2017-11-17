control - private
toEnd

	super toEnd.

	self direction = #forward
		ifTrue: [self current: self animations size].
	self direction = #backward
		ifTrue: [self current: 1].