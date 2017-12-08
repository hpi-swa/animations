tests
test04LoopInfinite

	| a1 a2 switches testLoopCount |
	a1 := AnimAnimation new duration: 100.
	a2 := AnimAnimation new duration: 100.
	
	sut
		add: a1;
		add: a2;
		loopCount: -1.

	sut start.

	testLoopCount := 6.
	switches := (2 "two animations" * testLoopCount).
	self wait: ((a1 duration + a2 duration) * testLoopCount) + (switches * 5) + 55 "???".
	
	self assert: sut currentAnimation == a1.
	self assert: 7 equals: sut currentLoop.
	self deny: sut finishedOnce.