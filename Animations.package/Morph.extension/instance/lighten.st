*animations-examples
lighten

	self darkenAnimation
		direction: #backward;
		finishBlock: [self darkenAnimation unregister];
		start.