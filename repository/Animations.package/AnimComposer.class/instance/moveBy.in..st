actions
moveBy: aPoint in: milliseconds

	self animation add: (
		AnimPropertyAnimation new
			target: self target;
			property: #position;
			startValue: 0;
			endValue: aPoint;
			offsetBlock: [self target position];
			duration: milliseconds;
			yourself).