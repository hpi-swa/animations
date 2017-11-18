tests
test07SingleRun

	| a1 |
	a1 := AnimAnimation new duration: 10.
	self assert: 1 equals: sut loopCount.
	
	sut add: a1.
	sut start.
	
	self assert: a1 isRunning.
	self assert: sut isRunning.
	self assert: 0 equals: a1 currentTime.

	self wait: 5.
	self assert: 5 equals: a1 currentTime.
	self assert: a1 isRunning.

	self wait: 10.
	self deny: a1 isRunning.
	self assert: a1 finishedOnce.
	self assert: 1 equals: sut currentLoop.
	
	self wait: 5.
	self deny: a1 isRunning.
	self assert: a1 finishedOnce.
	self assert: sut finishedOnce.
	self assert: 1 equals: sut currentLoop.