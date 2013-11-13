testing
testDarken

	sut := AnimBrightnessAnimation darkenOn: morph to: 0.5 duration: 50.
	sut start.
	
	self
		wait: 0;
		should: (sut transformedCanvas: canvas) brightness = 1.0;
		wait: 25;
		should: ((sut transformedCanvas: canvas) brightness roundTo: 0.01) = 0.74;
		wait: 25;
		should: ((sut transformedCanvas: canvas) brightness roundTo: 0.1) = 0.5.