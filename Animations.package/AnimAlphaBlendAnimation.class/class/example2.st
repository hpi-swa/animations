examples
example2

	| morph |
	morph := 'Hello, World!' asText asMorph
		position: 50@50;
		extent: 100@100.
	
	(AnimAlphaBlendAnimation fadeOutOn: morph duration: 2000)
		register;
		start.
		
	morph openInWorld.