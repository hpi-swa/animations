actions
moveTo: aPoint in: milliseconds

	self animation add: (
		AnimPropertyAnimation new
			target: self target;
			property: #position;
			startValue: 0;
			endValue: aPoint;
			startOffsetBlock: [self target position];
			duration: milliseconds;
			yourself).