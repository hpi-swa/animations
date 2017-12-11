initialize-release
initialize

	super initialize.
	
	self palette: {{ Form extent: 16@16 depth: 32 }}.
	self surface: Morph new.