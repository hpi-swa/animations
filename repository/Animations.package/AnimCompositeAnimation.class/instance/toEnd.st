control - private
toEnd

	super toEnd.

	self direction = #forward
		ifTrue: [self changeCurrentIndex: self animations size].
	self direction = #backward
		ifTrue: [self changeCurrentIndex: 1].
		
	self currentAnimation toEnd.