support
wait: milliseconds
	"Wait some time in terms of the main world cycle. Twice to assure correct start time."
	
	AnimAnimationRegistry value updateAnimations: referenceTime.

	referenceTime := referenceTime + milliseconds.
	
	AnimAnimationRegistry value updateAnimations: referenceTime.