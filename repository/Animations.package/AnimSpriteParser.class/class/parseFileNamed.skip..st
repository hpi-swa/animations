parsing
parseFileNamed: aFileName skip: backgroundColor

	^ self new
		initializeFrom: (Form fromFileNamed: aFileName);
		backgroundColor: backgroundColor;
		parse;
		map