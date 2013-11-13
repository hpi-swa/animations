registering
register: anAnimation

	self mutex critical: [
		anAnimation isPropertyAnimation
			ifTrue: [self propertyAnimations add: anAnimation. ^ self].
		
		anAnimation isGraphicsAnimation
			ifTrue: [
				self graphicsAnimations add: anAnimation.
				anAnimation morph ifNotNil: [:m |
					m animations add: anAnimation.
					m redrawLater].
				^ self].
		
		self otherAnimations add: anAnimation].