tests
testFinishBlock
	
	| counter |
	counter := 0.
	
	sut
		duration: 50;
		finishBlock: [counter := counter + 1];
		start: #keepWhenFinished.
		
	self wait: 50.
	
	self	
		assert: sut finishedOnce;
		assert: 1 equals: counter.
		
	self wait: 50.
	
	self assert: 1 equals: counter.