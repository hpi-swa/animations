testing
testGrayscale

	| color mappedColor|
	color := Color r: 0.4 g: 0.6 b: 0.5 alpha: 1.0.
	sut := AnimGrayscaleAnimation grayOutOn: morph duration: 50.
	sut start.
	
	self wait: 50.
	
	mappedColor := (sut transformedCanvas: canvas) mapColor: color.
	
	self
		should: (mappedColor red roundTo: 0.1) = 0.5;
		should: (mappedColor green roundTo: 0.1) = 0.5;
		should: (mappedColor blue roundTo: 0.1) = 0.5.