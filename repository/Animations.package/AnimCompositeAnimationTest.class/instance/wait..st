support
wait: milliseconds
	"Wait some time in terms of the main world cycle. Twice to assure correct start time."
	
	sut updateCurrentTime: referenceTime.
	AnimAnimationRegistry value otherAnimations do: [:each |
		each updateCurrentTime: referenceTime].

	referenceTime := referenceTime + milliseconds.
	
	sut updateCurrentTime: referenceTime.
	AnimAnimationRegistry value otherAnimations do: [:each |
		each updateCurrentTime: referenceTime].