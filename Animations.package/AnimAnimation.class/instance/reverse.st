control
reverse

	self direction = #forward
		ifTrue: [self direction: #backward]
		ifFalse: [self direction: #forward].