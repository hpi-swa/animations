accessing
endOffset

	^ endOffset ifNil: [endOffset := endOffsetBlock value]