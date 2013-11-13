testing
testLinearInterpolation

	sut
		easingCurve: AnimEasingCurve linear;
		duration: 50;
		startValue: 1;
		endValue: 50;
		start.
		
	self
		should: sut currentValue rounded = 1;
		wait: 25;
		should: sut currentValue rounded = 26;
		wait: 60;
		should: sut isStopped;
		should: sut currentValue rounded = 50.