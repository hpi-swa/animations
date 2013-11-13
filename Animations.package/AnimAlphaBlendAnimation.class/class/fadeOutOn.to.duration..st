instance creation
fadeOutOn: aMorph to: aValue duration: milliseconds

	^ self new
		morph: aMorph;
		duration: milliseconds;
		startValue: 1.0;
		endValue: aValue