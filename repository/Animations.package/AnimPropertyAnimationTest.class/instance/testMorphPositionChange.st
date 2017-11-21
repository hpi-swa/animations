tests
testMorphPositionChange

	| morph |
	morph := Morph new.
	sut := (AnimPropertyAnimation
		on: morph
		property: #position
		start: 0@0
		end: 6@12
		duration: 50)
		start;
		register.
		
	self
		wait: 25;
		should: morph position rounded = (3@6);
		wait: 25;
		should: morph position rounded = (6@12).