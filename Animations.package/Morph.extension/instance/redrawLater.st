*animations-core
redrawLater

	fullBounds 
		ifNil:[self invalidRect: self outerBounds]
		ifNotNil:[self invalidRect: fullBounds].