accessing
currentValue

	^ self
		interpolatedFrom: self currentStartValue
		to: self currentEndValue
		progress: self currentLoopTime asFloat / ((self duration - 1) max: 1).