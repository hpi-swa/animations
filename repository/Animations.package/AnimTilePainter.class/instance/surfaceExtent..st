accessing
surfaceExtent: aPoint
	self surface extent: (aPoint * self tileExtent).
	self changed: #surfaceExtent.