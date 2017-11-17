tests
test05NoInfiniteParts

	| a1 a2 |
	a1 := AnimAnimation new duration: 10.
	a2 := AnimAnimation new duration: 10; loopCount: -1.
	
	sut add: a1.
	self should: [sut add: a2] raise: Error.