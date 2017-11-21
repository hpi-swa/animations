tests
test01Path

	| m |
	m := Morph new.
	m topLeft: 100@100.
	
	sut := AnimPathAnimation on: m between: {0@0. 10@0. 10@10} within: 40.
	sut start; register.
	
	self assert: 100@100 equals: m topLeft.
	self assert: 2 equals: sut animations size.
	
	self wait: 10.
	self assert: 105@100 equals: m topLeft.
	self wait: 10.
	self assert: 110@100 equals: m topLeft.
	self wait: 10.
	self assert: 110@105 equals: m topLeft.
	self wait: 10.
	self assert: 110@110 equals: m topLeft.

	self assert: sut finishedOnce.