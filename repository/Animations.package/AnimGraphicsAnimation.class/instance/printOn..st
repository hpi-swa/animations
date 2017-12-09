printing
printOn: stream

	super printOn: stream.
	
	stream space.
	self morph
		ifNotNil: [:obj | obj printOn: stream]
		ifNil: [stream nextPutAll: '<no morph>'].