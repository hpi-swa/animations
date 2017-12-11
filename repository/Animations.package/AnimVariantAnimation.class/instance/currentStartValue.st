accessing
currentStartValue
	^ self startValue + (self startOffset ifNil: [0])