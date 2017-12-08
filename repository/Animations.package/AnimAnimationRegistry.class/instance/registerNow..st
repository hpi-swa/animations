registering - private
registerNow: anAnimation

	anAnimation isPropertyAnimation
		ifTrue: [
			(self propertyAnimations includes: anAnimation)
				ifFalse: [self propertyAnimations add: anAnimation].
			^ self].
	
	anAnimation isGraphicsAnimation
		ifTrue: [
			(self graphicsAnimations includes: anAnimation)
				ifFalse: [self graphicsAnimations add: anAnimation].
			anAnimation morph ifNotNil: [:m |
				(m animations includes: anAnimation)
					ifFalse: [m animations add: anAnimation].
				m redrawLater].
			^ self].
		
	anAnimation isCompositeAnimation
		ifTrue: [
			(self compositeAnimations includes: anAnimation)
				ifFalse: [self compositeAnimations add: anAnimation].
			^ self].
	
	(self otherAnimations includes: anAnimation)
		ifFalse: [self otherAnimations add: anAnimation].