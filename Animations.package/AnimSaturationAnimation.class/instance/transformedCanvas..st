interpolating
transformedCanvas: aCanvas

	^ (AnimSaturationMappingCanvas
		on: aCanvas)
		saturation: self currentValue