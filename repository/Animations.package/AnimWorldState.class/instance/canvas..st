canvas
canvas: aCanvas

	(aCanvas class == FormCanvas)  
		ifTrue: [AnimFormCanvas adoptInstance: aCanvas].

	super canvas: aCanvas.