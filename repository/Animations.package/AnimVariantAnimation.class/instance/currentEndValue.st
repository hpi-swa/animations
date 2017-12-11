accessing
currentEndValue
	^ self endValue + (self endOffset ifNil: [0])