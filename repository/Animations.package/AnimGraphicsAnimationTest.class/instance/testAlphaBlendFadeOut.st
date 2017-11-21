testing
testAlphaBlendFadeOut

	sut := AnimAlphaBlendAnimation fadeOutOn: morph duration: 50.
	sut start; register.
	
	self
		wait: 0;
		should: (sut transformedCanvas: canvas) alpha = 1.0;
		wait: 25;
		should: ((sut transformedCanvas: canvas) alpha roundTo: 0.1) = 0.5;
		wait: 25;
		should: ((sut transformedCanvas: canvas) alpha roundTo: 0.1) = 0.0.