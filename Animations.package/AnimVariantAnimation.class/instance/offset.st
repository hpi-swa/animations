accessing
offset
	
	^ self offsetBlock
		ifNotNil: [self offsetBlock value]
		ifNil: [offset]