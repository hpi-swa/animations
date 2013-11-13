*animations-examples
fadeOutThen: aBlock

	(AnimAlphaBlendAnimation
		fadeOutOn: self
		duration: 200)
		finishBlock: [self hide. aBlock value];
		register;
		start: #deleteWhenFinished.