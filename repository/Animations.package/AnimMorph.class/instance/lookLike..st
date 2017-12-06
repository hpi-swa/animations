animation control
lookLike: state

	state = self currentState ifTrue: [^ self].
	self resetAnimationDuring: [self currentState: state].