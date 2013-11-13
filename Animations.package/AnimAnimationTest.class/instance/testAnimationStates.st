tests
testAnimationStates
		
	self should: sut isStopped.
		
	sut
		duration: 50;
		start.
	
	self
		should: sut isRunning;
		wait: 25;
		should: sut isRunning.
		
	sut pause.
	
	self should: sut isPaused.
	
	sut resume.
	
	self
		should: sut isRunning;
		wait: 25;
		should: sut isStopped.