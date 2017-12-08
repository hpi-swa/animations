queries
isRegistered: anim

	^ (((self graphicsAnimations identityIncludes: anim)
		or: [self propertyAnimations identityIncludes: anim])
		or: [self compositeAnimations identityIncludes: anim])
		or: [self otherAnimations identityIncludes: anim]