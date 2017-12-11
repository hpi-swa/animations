actions
moveAlong: relativePoints

	^ self
		moveAlong: relativePoints
		in: self defaultDuration * (relativePoints - 1)