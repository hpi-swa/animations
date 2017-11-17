queries
isRegistered: anim

	self mutex critical: [
		^ ((self graphicsAnimations identityIncludes: anim)
			or: [self propertyAnimations identityIncludes: anim])
			or: [self otherAnimations identityIncludes: anim]]