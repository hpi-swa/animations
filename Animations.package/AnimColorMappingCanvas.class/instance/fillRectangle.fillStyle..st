drawing-rectangles
fillRectangle: aRectangle fillStyle: aFillStyle

	^ myCanvas
		fillRectangle: aRectangle
		fillStyle: (self mapFillStyle: aFillStyle)