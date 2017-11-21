tests
test05MakeCircle

	| m |
	m := Morph new.
	m topLeft: 0@0.
	
	sut := AnimPathAnimation
		on: m
		between: {0@0. 10@10}
		within: 1500.
	sut makeCircle.
	sut start; register.

	self assert: 8 equals: sut animations size.
	self assert: 1500 equals: (sut duration roundTo: 1500).

	"We have to divide the updates so that the composite animation can give each part a chance."
	30 timesRepeat: [self wait: 75]. 
	
	self assert: 0@0 equals: m topLeft.
	self assert: sut finishedOnce.