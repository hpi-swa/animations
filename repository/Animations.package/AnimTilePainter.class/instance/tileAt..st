accessing
tileAt: aPoint
	"In target."
	
	^ (self tilesAt: aPoint)
		ifEmpty: [nil]
		ifNotEmpty: [:t | t first]