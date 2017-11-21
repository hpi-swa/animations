accessing
prototype
	
	^ prototype ifNil: [prototype := AnimPropertyAnimation new property: #topLeft; yourself]
