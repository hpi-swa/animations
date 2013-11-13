queries
animationsFor: anObject

	self mutex critical: [
		^ (self graphicsAnimations select: [:anim | anim morph = anObject]),
			(self propertyAnimations select: [:anim | anim target = anObject])].
