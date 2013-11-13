accessing
originalCanvas
	"Return the original canvas without color mappings."
	
	| originalCanvas |
	originalCanvas := myCanvas.
	[originalCanvas isKindOf: AnimColorMappingCanvas]
		whileTrue: [originalCanvas := originalCanvas myCanvas].
	^ originalCanvas