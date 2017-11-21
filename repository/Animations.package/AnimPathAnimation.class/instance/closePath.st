initialization
closePath
	"Adds a point so that the end position is the same as the start position. The overall duration will not be changed."
	
	self points last ~= self points first ifTrue: [
		self
			setPath: (self points copyWith: self points first)
			duration: ((self points size - 1) * self prototype duration)].
		
	