default
main
	
	^ (Project isMorphic and: [Project isAnimatedMorphic])
		ifTrue: [Project current animations]
		ifFalse: [nil]