interpolating
transformedCanvas: aCanvas

	^ (AnimParagraphCanvas
		on: aCanvas)
		startIndex: self startValue;
		stopIndex: self currentValue rounded