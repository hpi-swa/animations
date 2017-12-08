updating - private
startNext

	self direction = #forward
		ifTrue: [self changeCurrentIndex: self currentIndex \\ self animations size + 1].
	
	self direction = #backward
		ifTrue: [self changeCurrentIndex: self currentIndex + self animations size - 2 \\ self animations size + 1].

	self currentAnimation start: self deletionPolicy.