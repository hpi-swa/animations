registering
register: anAnimation

	self mutex critical: [
		anAnimation isPropertyAnimation
			ifTrue: [
				(self propertyAnimations includes: anAnimation)
					ifFalse: [self propertyAnimations add: anAnimation. ^ self]].
		
		anAnimation isGraphicsAnimation
			ifTrue: [
				(self graphicsAnimations includes: anAnimation)
					ifFalse: [	self graphicsAnimations add: anAnimation].
				anAnimation morph ifNotNil: [:m |
					(m animations includes: anAnimation)
						ifFalse: [m animations add: anAnimation].
					m redrawLater].
				^ self].
		
		(self otherAnimations includes: anAnimation)
			ifFalse: [self otherAnimations add: anAnimation]].