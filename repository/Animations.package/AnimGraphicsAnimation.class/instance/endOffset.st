accessing
endOffset
	^ endOffset ifNil: [
		endOffsetBlock ifNotNil: [:b |
			endOffset := self morph
				ifNil: [b numArgs = 0 ifTrue: [b value]]
				ifNotNil: [:m | b cull: m]]]