printing
printOn: stream

	super printOn: stream.
	
	stream space.
	self target
		ifNotNil: [:obj | obj printOn: stream]
		ifNil: [stream nextPutAll: '<no target>'].