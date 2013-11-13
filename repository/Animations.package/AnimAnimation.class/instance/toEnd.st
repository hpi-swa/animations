control - private
toEnd

	self
		currentLoop: (self loopCount max: 1);
		currentTime: (self duration * self loopCount) - 1;
		pauseDuration: 0.