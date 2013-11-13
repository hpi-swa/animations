tests
testSimpleAnimation

	self
		should: sut isStopped;
		should: sut currentLoop = 1;
		should: sut currentLoopTime = 0;
		should: sut currentTime = 0;
		should: sut loopCount = 1.
		
	sut
		duration: 50;
		start.
		
	self wait: 25.
	
	self
		should: sut isRunning;
		should: sut currentLoop = 1;
		should: sut currentLoopTime = 25;
		should: sut currentTime = 25.
		
	self wait: 25.
	
	self
		should: sut isStopped;
		should: sut currentLoop = 1;
		should: sut currentLoopTime = 49;
		should: sut currentTime = 49.
	
