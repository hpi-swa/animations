testing
testAlphaBlendFadeIn

	sut := AnimAlphaBlendAnimation fadeInOn: morph duration: 50.
	sut start.
	
	self
		wait: 0;
		should: (sut transformedCanvas: canvas) alpha = 0.0;
		wait: 25;
		should: ((sut transformedCanvas: canvas) alpha roundTo: 0.1) = 0.5;
		wait: 25;
		should: ((sut transformedCanvas: canvas) alpha roundTo: 0.1) = 1.0.