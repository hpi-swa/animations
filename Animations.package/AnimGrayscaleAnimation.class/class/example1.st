examples
example1

	| morph |
	morph := Morph new
		position: 50@50;
		extent: 100@100.
	morph addMorph: (Morph new
		position: 60@60;
		extent: 80@80;
		color: Color yellow).
	
	(AnimGrayscaleAnimation grayOutOn: morph duration: 5000)
		start;
		register.
		
	morph openInWorld.