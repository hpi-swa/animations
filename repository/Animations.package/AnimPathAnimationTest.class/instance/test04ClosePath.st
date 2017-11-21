tests
test04ClosePath

	| m |
	m := Morph new.
	
	sut := AnimPathAnimation
		on: m
		between: {0@0. 100@0. 100@100}
		within: 1500.
	sut closePath.
	sut start; register.
	
	self assert: 3 equals: sut animations size.
	self assert: 1500 equals: sut duration.
	
	self wait: 500.
	self assert: 100@0 equals: m topLeft.
	self wait: 500.
	self assert: 100@100 equals: m topLeft.
	self wait: 500.
	self assert: 0@0 equals: m topLeft.

	self assert: sut finishedOnce.