*animations-support
compositeAnimations

	self flag: #mutexNeeded.
	^ AnimAnimationRegistry value
		ifNil: [#()]
		ifNotNil: [:registry | registry compositeAnimations select: [:anim | anim includesPropertyAnimationFor: self]]