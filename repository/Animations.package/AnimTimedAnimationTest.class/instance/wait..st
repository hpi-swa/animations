support
wait: milliseconds
	"Wait some time in terms of the main world cycle."
	
	sut updateCurrentTime: referenceTime.

	referenceTime := referenceTime + milliseconds.
	
	sut updateCurrentTime: referenceTime.