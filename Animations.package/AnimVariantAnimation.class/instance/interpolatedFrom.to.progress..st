interpolating
interpolatedFrom: fromValue to: toValue progress: aFloat
	"Assumes simple numbers at the moment. Maybe a more complex interpolator could make other types possible."

	^ fromValue + ((toValue - fromValue) *
		(self direction = #backward
			ifTrue: [1.0 - (self easingCurve valueForProgress: aFloat)]
			ifFalse: [self easingCurve valueForProgress: aFloat]))