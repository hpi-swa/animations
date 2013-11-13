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
	
	(AnimPropertyAnimation on: morph property: #position start: (50@50) end: (400@400) duration: 500)
		register;
		start: #deleteWhenFinished.
		
	morph openInWorld.