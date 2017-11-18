control - private
toStart

	super toStart.

	self currentAnimation ifNotNil: [:anim | anim unregister].

	self direction = #forward
		ifTrue: [self current: 1].
	self direction = #backward
		ifTrue: [self current: self animations size].
		
	self currentAnimation
		toStart;
		register.