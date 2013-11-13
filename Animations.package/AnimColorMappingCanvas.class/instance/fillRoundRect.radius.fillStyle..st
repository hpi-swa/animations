drawing-rectangles
fillRoundRect: aRectangle radius: radius fillStyle: aFillStyle

	^ myCanvas
		fillRoundRect: aRectangle
		radius: radius
		fillStyle: (self mapFillStyle: aFillStyle)