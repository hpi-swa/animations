registering
unregister

	(Project current isMorphic and: [Project current isAnimatedMorphic])
		ifTrue: [Project current animations unregister: self].