testing
testAlphaBlendFadeIn

	sut := AnimAlphaBlendAnimation fadeInOn: morph duration: 50.
	sut start; register.
	
	self
		wait: 0;
		assert: 0.0 equals: (sut transformedCanvas: canvas) alpha;
		wait: 25;
		assert: 0.5 equals: ((sut transformedCanvas: canvas) alpha roundTo: 0.1);
		wait: 25;
		assert: 1.0 equals: ((sut transformedCanvas: canvas) alpha roundTo: 0.1).