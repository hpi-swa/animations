accessing
startOffset
	^ startOffset ifNil: [
		startOffsetBlock ifNotNil: [:b |
			startOffset := self morph
				ifNil: [b numArgs = 0 ifTrue: [b value]]
				ifNotNil: [:m | b cull: m]]]