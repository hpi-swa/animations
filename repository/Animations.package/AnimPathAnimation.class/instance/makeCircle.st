initialization
makeCircle
	
	self points size ~= 2 ifTrue: [Error signal: 'You have to set exactly 2 points to extrapolate a circle.'].
	
	self makeCircle: (self points second - self points first) r.