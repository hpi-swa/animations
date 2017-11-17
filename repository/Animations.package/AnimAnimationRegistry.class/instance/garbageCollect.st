updating - private
garbageCollect

	self propertyAnimations
		select: [:anim | anim target isNil or: [anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]]]
		thenDo: [:anim | self unregister: anim].
		
	self graphicsAnimations
		select: [:anim | anim morph isNil or: [anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]]]
		thenDo: [:anim | self unregister: anim].

	self compositeAnimations
		select: [:anim | anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]]
		thenDo: [:anim | self unregister: anim].

	self otherAnimations
		select: [:anim | anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]]
		thenDo: [:anim | self unregister: anim].