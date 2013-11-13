interpolating
transformedCanvas: aCanvas

	^ (AnimAlphaBlendingCanvas
		on: aCanvas)
		alpha: self currentValue