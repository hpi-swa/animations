interpolating
transformedCanvas: aCanvas

	^ (AnimBrightnessMappingCanvas
		on: aCanvas)
		brightness: self currentValue