testing
includesPropertyAnimationFor: aTarget

	^ self animations
		anySatisfy: [:anim | (anim isPropertyAnimation and: [anim target == aTarget])
			or: [anim isCompositeAnimation and: [anim includesPropertyAnimationFor: aTarget]]]