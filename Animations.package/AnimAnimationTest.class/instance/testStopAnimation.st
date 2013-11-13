tests
testStopAnimation
	
	sut
		duration: 50;
		start.
	
	self 
		wait: 25;
		should: sut currentTime = 25.
	
	sut stop.
		
	self should: sut currentTime = 0.