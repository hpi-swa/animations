*animations-examples
pulse

	| fadeOut fadeIn pulse |
	self show.
	
	fadeOut := AnimAlphaBlendAnimation new
		morph: self;
		duration: 250;
		startValue: 1.0;
		endValue: 0.0;
		yourself.
	fadeIn := AnimAlphaBlendAnimation new
		morph: self;
		duration: 250;
		startValue: 0.0;
		endValue: 1.0;
		yourself.

	pulse := AnimCompositeAnimation new
		addAll: {fadeOut. fadeIn};
		loopCount: -1; "infinitely"
		start;
		register.