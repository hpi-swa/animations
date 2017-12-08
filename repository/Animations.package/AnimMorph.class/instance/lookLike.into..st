animation control
lookLike: state into: direction

	(direction = self currentDirection and: [state = self currentState])
		ifTrue: [^ self].
	
	self resetAnimationDuring: [self currentDirection: direction].