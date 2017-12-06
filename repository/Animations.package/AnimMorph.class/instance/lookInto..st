animation control
lookInto: direction

	direction = self currentDirection ifTrue: [^ self].
	self resetAnimationDuring: [self currentDirection: direction].