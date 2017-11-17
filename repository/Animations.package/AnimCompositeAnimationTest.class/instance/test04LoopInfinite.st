tests
test04LoopInfinite

	| a1 a2 |
	a1 := AnimAnimation new duration: 10.
	a2 := AnimAnimation new duration: 10.
	
	sut
		add: a1;
		add: a2;
		loopCount: -1.

	sut start.
	21 timesRepeat: [self wait: 5].
	
	self assert: sut currentAnimation == a1.
	self assert: 6 equals: sut currentLoop.
	self deny: sut finishedOnce.