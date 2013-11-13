tests
testFloatsReversed

	| valueHolder |
	valueHolder := ValueHolder new contents: 0.0.
	sut := (AnimPropertyAnimation
		on: valueHolder
		property: #contents
		start: 0.3234234234
		end: 0.0
		duration: 200)
		start.
	
	300 timesRepeat: [self wait: 1].
	
	self should: valueHolder contents = 0.0.