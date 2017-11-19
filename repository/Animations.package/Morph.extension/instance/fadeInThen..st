*animations-examples
fadeInThen: aBlock

	self show.
	(AnimAlphaBlendAnimation
		fadeInOn: self
		duration: 200)
		finishBlock: aBlock;
		register;
		start: #deleteWhenFinished.
