control - private
toEnd

	super toEnd.

	self currentAnimation ifNotNil: [:anim | anim unregister].

	self direction = #forward
		ifTrue: [self current: self animations size].
	self direction = #backward
		ifTrue: [self current: 1].
		
	self currentAnimation
		toEnd;
		register.