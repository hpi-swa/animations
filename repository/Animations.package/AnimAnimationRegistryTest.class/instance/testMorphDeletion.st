tests
testMorphDeletion

	AnimAnimationRegistry reset.

	self assert: AnimAnimationRegistry main graphicsAnimations isEmpty.

	sut := AnimGraphicsAnimation new
		morph: Morph new;
		duration: 5000;
		register.

	self assert: 1 equals: AnimAnimationRegistry main graphicsAnimations size.
	
	Smalltalk garbageCollect.
	AnimAnimationRegistry main garbageCollect.
	
	self assert: AnimAnimationRegistry main graphicsAnimations isEmpty.