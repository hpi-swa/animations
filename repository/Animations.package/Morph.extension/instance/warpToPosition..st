*animations-examples
warpToPosition: aPoint

	self fadeOutThen: [
		self
			position: aPoint;
			fadeIn].