private
mapColor: aColor

	aColor isTransparent
		ifTrue:[^aColor].
		
	aColor isOpaque
		ifTrue:[^aColor alpha: alpha].
		
	^ aColor alpha: (aColor alpha * alpha)