examples
ex01move

	| m |
	m := Morph new.
	m topLeft: 100@100.
	m openInWorld.
	
	(AnimPathAnimation
		on: m
		between: {0@0. 50@50. 100@100. 100@0. 0@100. 0@0}
		within: 5000)
			register;
			start.