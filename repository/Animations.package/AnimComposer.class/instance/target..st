accessing
target: anObject

	target ifNil: [target := WeakArray new: 1].
	target at: 1 put: anObject.