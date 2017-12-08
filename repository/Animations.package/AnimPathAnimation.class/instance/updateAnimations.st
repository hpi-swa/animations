updating - private
updateAnimations

	self isStopped ifFalse: [Error signal: 'You cannot update the animations while they are running.'].
	
	self animations removeAll.
	
	self points overlappingPairsDo: [:pt1 :pt2 |
		self add: (AnimPropertyAnimation new
			target: self prototype target;
			property: self prototype property;
			duration: self prototype duration;
			startValue: 0;
			endValue: pt2 - pt1;
			startOffsetBlock: self prototype startOffsetBlock;
			endOffsetBlock: self prototype endOffsetBlock;
			yourself)].