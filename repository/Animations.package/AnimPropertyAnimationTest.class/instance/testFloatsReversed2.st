tests
testFloatsReversed2

	| valueHolder |
	valueHolder := ValueHolder new contents: 0.0.
	sut := (AnimPropertyAnimation
		on: valueHolder
		property: #contents
		start: 0.3
		end: 0.0
		duration: 200)
		start;
		register.
	
	self wait: 500.
	
	self should: valueHolder contents = 0.0.