instance creation
darkenOn: aMorph to: aValue duration: milliseconds
	"Example: If you want to darken the color by 50% aValue should be 0.5."

	^ self new
		morph: aMorph;
		duration: milliseconds;
		startValue: 1.0;
		endValue: 1.0 - aValue