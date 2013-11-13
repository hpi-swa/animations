accessing
mapColor: aColor

	^ Color
		h: aColor hue
		s: aColor saturation
		v: (aColor brightness * self brightness min: 1.0 max: 0.0)
		alpha: aColor alpha