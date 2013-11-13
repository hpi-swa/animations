instance creation
fadeInOn: aMorph to: aValue duration: milliseconds

	^ self new
		morph: aMorph;
		duration: milliseconds;
		startValue: 0.0;
		endValue: aValue