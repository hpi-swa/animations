updating
updateCurrentValue: aValue

	self target ifNotNil: [:obj |
		obj
			perform: self property asMutator
			with: aValue].