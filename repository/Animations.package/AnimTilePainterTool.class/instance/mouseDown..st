event handling
mouseDown: evt

	self mode = #paint
		ifTrue: [self painter paintAt: (self tileGridIndexAt: evt position)].
	self mode = #erase
		ifTrue: [
			"Do not erase the ground/floor tile."
			(self painter tilesAt: (self tileGridIndexAt: evt position))
				in: [:tiles | tiles size > 1 ifTrue: [tiles first delete]]].