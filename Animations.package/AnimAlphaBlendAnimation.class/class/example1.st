examples
example1

	| morph |
	morph := Morph new
		position: 50@50;
		extent: 100@100.
	
	(AnimAlphaBlendAnimation fadeInOn: morph duration: 2000)
		register;
		start.
		
	morph openInWorld.