drawing
paragraph: p bounds: b color: c
	"Manipulate text lines. Start index not used at the moment because rendering would be jumpy. DO NOT change canvas state because the canvas will be reused for several drawing operations."
	
	| oldLines found actualStop |
	actualStop := self stopIndex min: p text size.
	
	actualStop >= p text size
		ifTrue: [^ super paragraph: p bounds: b color: c].
	
	found := false.
	oldLines := Array new: p lines size.
	
	p lines doWithIndex: [:line :index |
		oldLines at: index put: line last.
		found
			ifFalse: [
				self stopIndex > line last
					ifFalse: [
						line
							firstIndex: line first
							lastIndex: actualStop.
						found := true]]
			ifTrue: [
				line
					firstIndex: line first
					lastIndex: 0]].
		
	[super paragraph: p bounds: b color: c]
		ensure: [p lines doWithIndex: [:line :index |
			line
				firstIndex: line first
				lastIndex: (oldLines at: index)]].