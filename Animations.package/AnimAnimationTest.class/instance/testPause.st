tests
testPause
			
	sut
		duration: 50;
		start.
	
	self wait: 25.
	
	sut pause.
	
	self
		should: sut isPaused;
		should: sut currentTime = 25;
		wait: 25;
		should: sut isPaused;
		should: sut currentTime = 25.
		
	sut resume.
	
	self
		should: sut isRunning;
		should: sut currentTime = 25;
		wait: 25;
		should: sut isStopped;
		should: sut currentTime = 49.