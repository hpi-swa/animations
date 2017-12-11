composition
addAll: someAnimations

	someAnimations do: [:ea | self add: ea].
	^ someAnimations