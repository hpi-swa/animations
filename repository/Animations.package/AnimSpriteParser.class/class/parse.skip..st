parsing
parse: aForm skip: backgroundColor

	^ self new
		initializeFrom: aForm;
		backgroundColor: backgroundColor;
		parse;
		map