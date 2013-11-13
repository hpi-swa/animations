tests
testInfiniteAnimation
	"This tests also possible time jumps."
	
	sut
		duration: 50;
		loopCount: -1;
		start.
		
	self wait: 500..
	
	self
		should: sut isRunning;
		should: sut currentLoop = 11;
		should: sut currentLoopTime = 0;
		should: sut currentTime = 500.