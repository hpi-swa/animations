accessing
tilesAt: aPoint
	"In target."
	
	^ (self surface morphsAt: ((aPoint - (1@1)) * self tileExtent) + self surface topLeft)
		copyWithout: self surface