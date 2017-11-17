composition
add: anAnimation

	anAnimation isInfinite
		ifTrue: [
			(self animations noneSatisfy: [:ea | ea isInfinite])
				ifTrue: []
				ifFalse: [Error signal: 'Only a single infinite animations possible in compositions.']]
		ifFalse: [
			(self animations anySatisfy: [:ea | ea isInfinite])
				ifTrue: [Error signal: 'You cannot add a regular animation after an infinite one.']].
	
	self animations add: anAnimation.