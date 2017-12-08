actions
moveAlong: relativePoints in: milliseconds

	self animation add: (
		AnimPathAnimation
			on: self target
			between: relativePoints
			within: milliseconds).