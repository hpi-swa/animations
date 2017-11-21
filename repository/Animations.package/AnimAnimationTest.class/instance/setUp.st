running
setUp

	super setUp.
	sut := AnimAnimation new
		duration: 10;
		register.
	spy := AnimSignalSpy on: sut.