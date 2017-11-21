tests
test03ReferencePoint

	sut := AnimPathAnimation
		on: Morph new
		between: {0@0. 100@100}
		within: 1000.
		
	self assert: #topLeft equals: sut prototype property.