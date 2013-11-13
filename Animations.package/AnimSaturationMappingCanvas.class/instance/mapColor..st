private
mapColor: aColor

	^ Color
		h: aColor hue
		s: (aColor saturation * self saturation min: 1.0 max: 0.0)
		v: aColor brightness
		alpha: aColor alpha