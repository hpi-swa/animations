printing
printOn: stream

	name
		ifNotNil: [:nm | nm printOn: stream]
		ifNil: [
			stream nextPut: $<.
			stream nextPutAll: self class name.
			stream nextPut: $>.
			stream space.
			
			stream nextPutAll: self state.
			stream space.
			stream nextPutAll: self direction.
			stream space.
			
			stream nextPut: $(.
			
			#(currentLoop loopCount currentLoopTime duration)
				do: [:prop | stream nextPutAll: (self perform: prop) asString]
				separatedBy: [stream space].
			
			stream nextPut: $)].