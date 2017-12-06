support
scaleBy: factor

	| targetSize |
	targetSize := (self extent * factor) rounded.
	self animationsDo: [:anim | anim frames: (anim frames collect: [:form | form scaledIntoFormOfSize: targetSize smoothing: 1])].
	self resetAnimation.