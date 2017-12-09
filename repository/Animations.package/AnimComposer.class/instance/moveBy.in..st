actions
moveBy: aPoint in: milliseconds

	self animation add: (
		AnimPropertyAnimation new
			target: self target;
			property: #position;
			startValue: 0;
			endValue: aPoint;
			offsetBlock: [:obj | obj position];
			duration: milliseconds;
			yourself).