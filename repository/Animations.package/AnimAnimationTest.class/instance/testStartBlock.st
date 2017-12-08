tests
testStartBlock
	
	| counter |
	counter := 0.
	
	sut
		duration: 50;
		startBlock: [counter := counter + 1];
		start: #keepWhenFinished.
		
	self wait: 25.
	self assert: 1 equals: counter.
		
	sut pause.
	self wait: 25.
	self assert: 1 equals: counter.
	
	sut resume.
	self wait: 25.
	self assert: 1 equals: counter.