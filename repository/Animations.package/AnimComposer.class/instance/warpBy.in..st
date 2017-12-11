actions
warpBy: aPoint in: milliseconds

	^ {
		self fadeOutIn: milliseconds // 2.
		self do: [:morph | morph position: morph position + aPoint].
		self fadeInIn: milliseconds // 2 }