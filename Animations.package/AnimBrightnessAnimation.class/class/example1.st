examples
example1

	| morph |
	morph := Morph new
		position: 50@50;
		extent: 100@100.
	
	(AnimBrightnessAnimation darkenOn: morph to: 1.0 duration: 5000)
		register;
		start.
		
	morph openInWorld.