updating
updateCurrentValue: aValue

	self target ifNil: [^ self].
	
	self target
		perform: (self property, #:) asSymbol
		with: aValue.