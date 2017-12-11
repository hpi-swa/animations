accessing
tileGridIndexAt: pixelPosition

	^ ((pixelPosition - self surface topLeft) // self painter tileExtent) + (1@1)