control - private
toStart

	super toStart.

	self direction = #forward
		ifTrue: [self changeCurrentIndex: 1].
	self direction = #backward
		ifTrue: [self changeCurrentIndex: self animations size].
		
	self currentAnimation toStart.