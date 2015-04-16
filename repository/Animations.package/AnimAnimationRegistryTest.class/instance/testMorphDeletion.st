tests
testMorphDeletion

	self assert: registry graphicsAnimations isEmpty.

	sut := AnimGraphicsAnimation new
		morph: Morph new;
		duration: 5000.
	registry register: sut.

	self assert: 1 equals: registry graphicsAnimations size.
	
	Smalltalk garbageCollect.
	registry garbageCollect.
	
	self assert: registry graphicsAnimations isEmpty.