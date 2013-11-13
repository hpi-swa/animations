drawing-rectangles
frameRoundRect: aRectangle radius: radius width: borderWidth color: borderColor

	^ myCanvas
		frameRoundRect: aRectangle
		radius: radius
		width: borderWidth
		color: (self mapColor: borderColor)