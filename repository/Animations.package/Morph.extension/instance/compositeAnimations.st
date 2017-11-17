*animations-support
compositeAnimations

	self flag: #mutexNeeded.
	^ super compositeAnimations, (AnimAnimationRegistry value
		ifNil: [#()]
		ifNotNil: [:registry | registry compositeAnimations select: [:anim | anim includesGraphicsAnimationFor: self]])