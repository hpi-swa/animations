accessing - convenience
currentProgress

	self isInfinite ifTrue: [^ 0].
	^ (self currentLoop + self currentLoopProgress) / self loopCount