updating - private
evaluateStartBlock

	self startBlock ifNotNil: [:b |
		self target
			ifNil: [b numArgs = 0 ifTrue: [b value]]
			ifNotNil: [:obj | b cull: obj]].