updating - private
updateCurrentValues
	
	self propertyAnimations do: [:anim |
		anim updateCurrentValue.
		"GC here too. Needs mutex?"
		(anim target isNil or: [anim finishedOnce and: [anim deletionPolicy = #deleteWhenFinished]])
			ifTrue: [self unregister: anim]].