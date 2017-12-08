tests
test01MorphDeletion

	self assert: registry graphicsAnimations isEmpty.

	sut := AnimGraphicsAnimation new
		morph: Morph new;
		duration: 5000.
	registry register: sut.
	registry updateRegistry.
	self assert: 1 equals: registry graphicsAnimations size.
	
	Smalltalk garbageCollect.
	registry garbageCollect.
	registry updateRegistry.
	
	self assert: registry graphicsAnimations isEmpty.