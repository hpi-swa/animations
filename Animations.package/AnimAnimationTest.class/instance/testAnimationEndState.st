tests
testAnimationEndState
		
	sut
		duration: 50;
		loopCount: 2;
		start.
		
	self wait: 100.
	
	self
		should: sut isStopped;
		should: sut currentLoop = 2;
		should: sut currentLoopTime = 49;
		should: sut currentTime = 99.
	
	sut
		resetAfterFinished: true;
		start.
		
	self wait: 100.
	
	self
		should: sut isStopped;
		should: sut currentLoop = 1;
		should: sut currentLoopTime = 0;
		should: sut currentTime = 0.
