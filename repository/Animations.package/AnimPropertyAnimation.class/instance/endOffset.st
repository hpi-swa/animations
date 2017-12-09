accessing
endOffset
	^ endOffset ifNil: [
		endOffsetBlock ifNotNil: [:b |
			endOffset := self target
				ifNil: [b numArgs = 0 ifTrue: [b value]]
				ifNotNil: [:obj | b cull: obj]]]