drawing-polygons
drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc

	^ myCanvas
		drawPolygon: vertices
		fillStyle: (self mapFillStyle: aFillStyle)
		borderWidth: bw
		borderColor: (self mapColor: bc)