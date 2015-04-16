running
setUp

	super setUp.
	morph := Morph new.
	registry := AnimAnimationRegistry new.
	sut := AnimGraphicsAnimation new
		morph: morph;
		duration: 5000.