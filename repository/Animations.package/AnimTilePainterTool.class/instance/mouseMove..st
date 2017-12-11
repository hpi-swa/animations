event handling
mouseMove: evt
	self updateBrushPreview: evt.
	
	
	(evt redButtonPressed and: [evt hand submorphs isEmpty])
		ifTrue: [self mouseDown: evt].