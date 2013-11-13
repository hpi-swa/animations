running
setUp

	super setUp.
	sut := AnimAnimation new
		duration: 10.
	spy := AnimSignalSpy on: sut.