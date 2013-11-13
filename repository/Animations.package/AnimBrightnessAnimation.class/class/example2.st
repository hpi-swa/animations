examples
example2

	| morph |
	morph := Morph new
		position: 50@50;
		extent: 100@100.
	morph addMorph: (Morph new
		position: 60@60;
		extent: 80@80;
		color: Color yellow).
	
	(AnimBrightnessAnimation darkenOn: morph to: 1.0 duration: 5000)
		start;
		register.
		
	morph openInWorld.