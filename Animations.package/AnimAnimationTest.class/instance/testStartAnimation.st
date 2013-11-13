tests
testStartAnimation
	
	sut
		duration: 50;
		start.
	
	self wait: 25.
	
	sut start.
	
	self should: sut currentTime = 25.
	
	sut
		stop;
		start.
		
	self should: sut currentTime = 0.