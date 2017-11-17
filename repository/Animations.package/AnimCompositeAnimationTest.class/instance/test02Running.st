tests
test02Running

	| a1 a2 |
	a1 := AnimAnimation new duration: 10.
	a2 := AnimAnimation new duration: 50.
	
	sut
		add: a1;
		add: a2.

	sut start.
	self assert: sut currentAnimation == a1.
	self assert: a1 isRegistered.
	
	self wait: 10.	
	self assert: sut currentAnimation == a1.
	self assert: a1 isRegistered.
		
	self wait: 5.
	self assert: sut currentAnimation == a2.
	self deny: a1 isRegistered.
	self assert: a2 isRegistered.

	self assert: a1 finishedOnce.
	self assert: a2 isRunning.
	self assert: sut isRunning.

	self wait: 100.
	self assert: a2 finishedOnce.
	self assert: sut finishedOnce.
