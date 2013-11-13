private
mapFillStyle: aFillStyle

	self alpha = 1.0
		ifTrue: [^ aFillStyle].

	self flag: #performance. "mt: Expensive?"
	aFillStyle isGradientFill
		ifTrue: [^ aFillStyle copy colorRamp: (aFillStyle colorRamp collect: [:assoc | assoc key -> (self mapColor: assoc value)])].
	
	^ super mapFillStyle: aFillStyle