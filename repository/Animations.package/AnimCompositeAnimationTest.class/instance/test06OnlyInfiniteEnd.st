tests
test06OnlyInfiniteEnd

	| a1 a2 a3 |
	a1 := AnimAnimation new duration: 10.
	a2 := AnimAnimation new duration: 10; loopCount: -1.
	a3 := AnimAnimation new duration: 10.
	
	sut add: a1.
	self shouldnt: [sut add: a2] raise: Error.
	self should: [sut add: a3] raise: Error.