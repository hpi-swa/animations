accessing
morph: aMorph

	morph ifNil: [morph := WeakArray new: 1].
	morph at: 1 put: aMorph.