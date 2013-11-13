private
mapColor: aColor

	| avg |
	avg := { aColor red. aColor green. aColor blue } average.
	^ Color
		r: aColor red + ((avg - aColor red) * self ratio)
		g: aColor green + ((avg - aColor green) * self ratio)
		b: aColor blue + ((avg - aColor blue) * self ratio)
		alpha: aColor alpha