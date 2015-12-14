default
reset
	"AnimAnimationRegistry reset."
	
	(Project current isMorphic and: [Project current isAnimatedMorphic])
		ifTrue: [Project current animations clear]