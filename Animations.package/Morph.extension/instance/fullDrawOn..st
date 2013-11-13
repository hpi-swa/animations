*animations-core-override
fullDrawOn: aCanvas
	"Draw the full Morphic structure on the given Canvas.
	
	OVERRIDE: Was in 'drawing' category. Simulate Animation Framework."

	AnimAnimationRegistry morphicDrawBlock
		value: self value: aCanvas.