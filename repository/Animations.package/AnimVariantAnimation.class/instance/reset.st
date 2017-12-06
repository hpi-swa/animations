control - private
reset

	super reset.
	
	self startOffsetBlock ifNotNil: [self startOffset: nil].
	self endOffsetBlock ifNotNil: [self endOffset: nil].