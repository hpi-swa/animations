updating - private
garbageCollect

	self propertyAnimations
		select: [:anim | anim isValid not or: [anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]]]
		thenDo: [:anim | self unregister: anim].
		
	self graphicsAnimations
		select: [:anim | anim isValid not or: [anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]]]
		thenDo: [:anim | self unregister: anim].

	self compositeAnimations
		select: [:anim | 
			(anim canFinish or: [anim isValid]) not
				or: [anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]]]
		thenDo: [:anim | self unregister: anim].

	self otherAnimations
		select: [:anim | anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]]
		thenDo: [:anim | self unregister: anim].