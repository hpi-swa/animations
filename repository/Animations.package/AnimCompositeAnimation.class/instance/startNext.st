updating - private
startNext

	self currentAnimation unregister.

	self direction = #forward
		ifTrue: [self current: self current \\ self animations size + 1].
	
	self direction = #backward
		ifTrue: [self current: self current + self animations size - 2 \\ self animations size + 1].

	self currentAnimation
		start: self deletionPolicy;
		register.