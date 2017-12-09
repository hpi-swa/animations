accessing
target

	target ifNil: [target := WeakArray new: 1].
		
	^ target at: 1.