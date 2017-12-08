registering - private
clear

	"Clear local animation caches."
	self graphicsAnimations do: [:anim |
		anim morph ifNotNil: [:m | m removeProperty: #animations]].
		
	propertyAnimations := nil.
	graphicsAnimations := nil.
	compositeAnimations := nil.
	otherAnimations := nil.

	pendingAdditions := nil.
	pendingRemovals := nil.