converting
convertForm: aForm
	"Pixel-wise color mapping for very small forms. Performance reasons."
	
	| depth |
	depth := aForm depth.
	aForm extent <= (512@512)
		ifTrue: [^ aForm collectPixels: [:pv | | tmp |
			"Fix Squeak's black/alpha speciality. See Color class >> #colorFromPixelValue:depth:."
			tmp := pv = 16rFF000000 ifTrue: [16rFF000001] ifFalse: [pv]. "black"
			depth := aForm depth.
			(self mapColor: (Color colorFromPixelValue: tmp depth: depth))
				pixelValueForDepth: depth]]. 

	^ aForm