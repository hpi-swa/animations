default
reset

	(Project isMorphic and: [Project isAnimatedMorphic])
		ifTrue: [Project current animations clear]