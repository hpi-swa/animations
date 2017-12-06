parsing
parse: aForm

	^ self new
		initializeFrom: aForm;
		parse;
		map