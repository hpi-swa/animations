registering
register

	(Project current isMorphic and: [Project current isAnimatedMorphic])
		ifTrue: [Project current animations register: self]
		ifFalse: [self finish].