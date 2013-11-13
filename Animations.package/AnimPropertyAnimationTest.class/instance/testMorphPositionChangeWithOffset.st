tests
testMorphPositionChangeWithOffset

	| morph |
	morph := Morph new.
	sut := (AnimPropertyAnimation
		on: morph
		property: #position
		start: 0@0
		end: 6@12
		duration: 50)
		offset: 10@10;
		start.
		
	self
		wait: 25;
		should: morph position rounded = (13@16);
		wait: 25;
		should: morph position rounded = (16@22).