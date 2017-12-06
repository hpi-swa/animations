accessing
startOffset

	^ startOffset ifNil: [startOffset := startOffsetBlock value]