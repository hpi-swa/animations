updating - private
updateCurrentLoop
	"Detect loop end and change. Account for jumpy clocks."
	
	| actualLoop |
	actualLoop := self currentTime // self duration.
	actualLoop >= self currentLoop
		ifTrue: [self currentLoop: actualLoop + 1].