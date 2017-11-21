tests
test02ChangePath

	| m |
	m := Morph new.
	m topLeft: 100@100.
	
	sut := AnimPathAnimation on: m between: {0@0. 10@0. 10@10} within: 40.
	sut start; register.
	self wait: 20.
	
	self
		should: [sut setPath: {10@10. 100@100} duration: 1000]
		raise: Error.
		
	sut stop.
	self
		shouldnt: [sut setPath: {10@10. 100@100} duration: 1000]
		raise: Error.