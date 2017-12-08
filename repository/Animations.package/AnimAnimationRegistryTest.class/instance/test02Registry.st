tests
test02Registry

	self assert: registry pendingRequests isEmpty.

	sut := AnimAnimation new duration: 5000.
	registry register: sut.
	self deny: registry pendingRequests isEmpty.

	registry updateRegistry.
	self assert: registry pendingRequests isEmpty.
	self assert: 1 equals: registry otherAnimations size.