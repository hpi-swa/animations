running
setUp

	super setUp.
	morph := Morph new.
	sut := AnimGraphicsAnimation new
		morph: morph;
		duration: 5000.