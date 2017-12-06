accessing
currentValue

	^ self
		interpolatedFrom: self startValue + (self startOffset ifNil: [0])
		to: self endValue + (self endOffset ifNil: [0])
		progress: self currentLoopTime asFloat / ((self duration - 1) max: 1).