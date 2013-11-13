instance creation
grayOutOn: aMorph duration: milliseconds

	^ self new
		morph: aMorph;
		duration: milliseconds;
		startValue: 0.0;
		endValue: 1.0