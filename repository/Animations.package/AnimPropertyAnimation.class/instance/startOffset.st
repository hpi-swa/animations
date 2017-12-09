accessing
startOffset
	^ startOffset ifNil: [
		startOffsetBlock ifNotNil: [:b |
			startOffset := self target
				ifNil: [b numArgs = 0 ifTrue: [b value]]
				ifNotNil: [:obj | b cull: obj]]]