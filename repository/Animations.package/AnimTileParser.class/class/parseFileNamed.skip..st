parsing
parseFileNamed: aFileName skip: aPoint

	^ self new
		initializeFrom: (Form fromFileNamed: aFileName);
		tileSize: aPoint;
		parse;
		map