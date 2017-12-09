updating - private
evaluateStartBlock

	self startBlock ifNotNil: [:b |
		self morph
			ifNil: [b numArgs = 0 ifTrue: [b value]]
			ifNotNil: [:m | b cull: m]].