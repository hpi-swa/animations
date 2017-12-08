updating - private
changeCurrentIndex: newIndex

	| oldAnim newAnim |
	self currentIndex = newIndex ifTrue: [^ self].
	
	oldAnim := self currentAnimation.
	self currentIndex: newIndex.
	newAnim := self currentAnimation.

	self isRegistered ifTrue: [
		oldAnim unregister.
		newAnim register].