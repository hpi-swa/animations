tests
test03LoopTwice

	| a1 a2 |
	a1 := AnimAnimation new name: #a1; duration: 10.
	a2 := AnimAnimation new name: #a2; duration: 50.
	
	sut
		add: a1;
		add: a2;
		loopCount: 2.

	sut start.

	self wait: 10; wait:  10.
	self assert: sut currentAnimation == a2.
	self assert: 1 equals: sut currentLoop.
	
	self wait: 40; wait: 5.
	self assert: sut currentAnimation == a1.
	self assert: 2 equals: sut currentLoop.
	self deny: sut finishedOnce.
	
	self wait: 15; wait: 50; wait: 0.
	self assert: sut finishedOnce.
