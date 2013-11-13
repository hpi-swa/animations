*animations-core
transformedCanvasOn: aCanvas

	| transformedCanvas |
	transformedCanvas := self ignoresColorMappings
		ifTrue: [aCanvas originalCanvas]
		ifFalse: [AnimAnimationRegistry main transformedCanvasFor: self from: aCanvas].
		
	(AnimAnimationRegistry main isAtLeastOneGraphicsAnimationRunningFor: self)
		ifTrue: [self invalidRect: (transformedCanvas clipRect intersect: self fullBounds)].
		
	^ transformedCanvas