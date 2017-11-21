examples
ex02circle

	| m |
	m :=  CircleMorph new.
	m extent: 20@20.
	m topLeft: 100@100.
	m openInWorld.
	
	(AnimPathAnimation
		on: m
		between: {0@0. 50@5}
		within: 5000)
			makeCircle;
			register;
			start.