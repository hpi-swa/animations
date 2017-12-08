queries
animationsFor: anObject

	^ (self graphicsAnimations select: [:anim | anim morph = anObject]),
		(self propertyAnimations select: [:anim | anim target = anObject])