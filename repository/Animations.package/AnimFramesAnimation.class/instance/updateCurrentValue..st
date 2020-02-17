updating
updateCurrentValue: aValue
	"Find out about the current frame and set it. The given value is between start and end value, which corresponds to the number of frames available."
	
	self target ifNotNil: [:obj |
		obj
			perform: self property asSimpleSetter
			with: (self frames at: aValue rounded)].