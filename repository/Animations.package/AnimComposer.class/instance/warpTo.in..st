actions
warpTo: aPoint in: milliseconds

	self fadeOutIn: milliseconds // 2.
	self do: [:morph | morph position: aPoint].
	self fadeInIn: milliseconds // 2.