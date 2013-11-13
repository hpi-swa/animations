interpolating
transformedCanvas: aCanvas

	^ (AnimGrayscaleMappingCanvas
		on: aCanvas)
		ratio: self currentValue