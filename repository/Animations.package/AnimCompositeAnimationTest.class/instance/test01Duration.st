tests
test01Duration

	sut add: (AnimAnimation new duration: 10).
	sut add: (AnimAnimation new duration: 50).
	
	self assert: 60 equals: sut duration.