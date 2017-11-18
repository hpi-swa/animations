support
wait: milliseconds
	"Wait some time in terms of the main world cycle. Twice to assure correct start time."
	
	AnimAnimationRegistry value compositeAnimations do: [:each |
		each updateCurrentTime: referenceTime].
	AnimAnimationRegistry value otherAnimations do: [:each |
		each updateCurrentTime: referenceTime].

	referenceTime := referenceTime + milliseconds.
	
	AnimAnimationRegistry value compositeAnimations do: [:each |
		each updateCurrentTime: referenceTime].
	AnimAnimationRegistry value otherAnimations do: [:each |
		each updateCurrentTime: referenceTime].