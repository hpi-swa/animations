composition
add: anAnimation

	anAnimation isInfinite ifTrue: [Error signal: 'No infinite animations possible in compositions.'].
	
	self animations add: anAnimation.