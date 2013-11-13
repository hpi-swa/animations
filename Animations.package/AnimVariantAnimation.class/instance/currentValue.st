accessing
currentValue

	| v o |
	v := self
		interpolatedFrom: self startValue
		to: self endValue
		progress: self currentLoopTime asFloat / ((self duration - 1) max: 1).
	o := self offset.
	
	^ o
		ifNil: [v]
		ifNotNil: [v + o]