accessing
valueForProgress: aFloat
	"Interpolate the given value which should be between 0.0 and 1.0."
	
	^ self conversionBlock
		ifNil: [aFloat "just linear now"]
		ifNotNil: [:b | b value: aFloat]