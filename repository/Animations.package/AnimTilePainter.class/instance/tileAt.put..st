painting
tileAt: aPoint put: aTile
	
	^ self surface addMorph: 
		(aTile asMorph
			topLeft: ((aPoint - (1@1)) * self tileExtent) + self surface topLeft;
			yourself)