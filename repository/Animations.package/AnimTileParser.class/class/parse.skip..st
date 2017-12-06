parsing
parse: aForm skip: aPoint

	^ self new
		initializeFrom: aForm;
		tileSize: aPoint;
		parse;
		map