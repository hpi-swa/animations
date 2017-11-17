testing
includesGraphicsAnimationFor: aMorph

	^ self animations
		anySatisfy: [:anim | (anim isGraphicsAnimation and: [anim morph == aMorph])
			or: [anim isCompositeAnimation and: [anim includesGraphicsAnimationFor: aMorph]]]