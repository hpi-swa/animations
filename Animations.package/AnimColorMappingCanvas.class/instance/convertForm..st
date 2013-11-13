converting
convertForm: aForm
	"Pixel-wise color mapping for very small forms. Performance reasons."
	
	aForm extent <= (64@64)
		ifTrue: [^ aForm collectColors: [:color | self mapColor: color]].
		
	^ aForm