registering
unregister: anAnimation

	self mutex critical: [
		anAnimation isPropertyAnimation
			ifTrue: [self propertyAnimations remove: anAnimation ifAbsent: []. ^ self].
		
		anAnimation isGraphicsAnimation
			ifTrue: [
				self graphicsAnimations remove: anAnimation ifAbsent: [].
				anAnimation morph ifNotNil: [:m | m animations remove: anAnimation ifAbsent: []].
				^ self].
			
		self otherAnimations remove: anAnimation ifAbsent: []].