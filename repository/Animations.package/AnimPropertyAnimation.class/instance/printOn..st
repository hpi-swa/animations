printing
printOn: stream

	super printOn: stream.
	
	self target ifNotNil: [:obj |
		stream space.
		obj printOn: stream].