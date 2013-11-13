tests
testTotalDuration
	
	sut
		duration: 50;
		loopCount: 2.
		
	self should: sut totalDuration = 100.