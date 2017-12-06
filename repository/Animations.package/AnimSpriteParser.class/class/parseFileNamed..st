parsing
parseFileNamed: aFileName

	^ self new
		initializeFrom: (Form fromFileNamed: aFileName);
		parse;
		map