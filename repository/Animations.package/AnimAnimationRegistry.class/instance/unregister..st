registering
unregister: anAnimation

	self mutex critical: [
		anAnimation isPropertyAnimation
			ifTrue: [self propertyAnimations remove: anAnimation ifAbsent: []. ^ self].
		
		anAnimation isGraphicsAnimation
			ifTrue: [
				self graphicsAnimations remove: anAnimation ifAbsent: [].
				anAnimation morph ifNotNil: [:m |
					m animations remove: anAnimation ifAbsent: [].
					m redrawLater].
				^ self].
		
		anAnimation isCompositeAnimation
			ifTrue: [
				self compositeAnimations remove: anAnimation ifAbsent: [].
				anAnimation currentAnimation ifNotNil: [:anim | anim unregister].
				^ self].	
		
		self otherAnimations remove: anAnimation ifAbsent: []].