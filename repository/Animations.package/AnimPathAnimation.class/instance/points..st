accessing
points: somePoints

	self isStopped ifFalse: [Error signal: 'You can only change the path if the animation has stopped.'].
	somePoints size > 1 ifFalse: [Error signal: 'You have to set at least 2 points for a path.'].
	
	points := somePoints.
