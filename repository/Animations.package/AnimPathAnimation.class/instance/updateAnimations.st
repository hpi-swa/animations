updating - private
updateAnimations

	self isStopped ifFalse: [Error signal: 'You cannot update the animations while they are running.'].
	
	self animations removeAll.
	
	self points overlappingPairsDo: [:pt1 :pt2 |
		self add: (AnimPropertyAnimation new
			target: self prototype target;
			property: self prototype property;
			duration: self prototype duration;
			startValue: pt1;
			endValue: pt2;
			offset: self prototype offset;
			yourself)].