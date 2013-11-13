drawing-polygons
drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc

	^ myCanvas
		drawPolygon: vertices
		color: (self mapColor: aColor)
		borderWidth: bw
		borderColor: (self mapColor: bc)