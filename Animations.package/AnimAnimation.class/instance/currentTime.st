accessing
currentTime
	"The current time starts at 0 and ends at #totalDuration."

	^ currentTime ifNil: [currentTime := 0]