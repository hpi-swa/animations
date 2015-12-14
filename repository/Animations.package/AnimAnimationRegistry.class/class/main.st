default
main
	
	^ (Project current isMorphic and: [Project current isAnimatedMorphic])
		ifTrue: [Project current animations]
		ifFalse: [nil]