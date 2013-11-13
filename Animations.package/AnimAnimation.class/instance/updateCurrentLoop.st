updating - private
updateCurrentLoop
	"Detect loop end and change."
	
	(self currentTime // self duration) >= self currentLoop
		ifTrue: [self currentLoop: (self currentTime // self duration) + 1].