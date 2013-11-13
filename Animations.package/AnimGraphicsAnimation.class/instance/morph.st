accessing
morph

	morph ifNil: [morph := WeakArray new: 1].
		
	^ morph at: 1.