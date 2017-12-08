printing
printOn: stream

	super printOn: stream.
	
	self morph ifNotNil: [:obj |
		stream space.
		obj printOn: stream].