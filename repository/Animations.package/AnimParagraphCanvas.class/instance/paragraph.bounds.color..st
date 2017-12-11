drawing
paragraph: p bounds: b color: c
	"Manipulate text line endings. DO NOT change canvas state here because the canvas might be re-used for several drawing operations in the graphical hierarchy."
	
	| oldLines found actualStop scale |
	self max ~= -1
		ifTrue: [
			self max
				ifNil: [self max: p text size]
				ifNotNil: [:currentMax | self max: (currentMax max: p text size)].
			scale := self max / (p text size max: 1)]
		ifFalse: [
			scale := 1.0].
		
	actualStop := self relative
		ifFalse: [(self stopIndex * scale) rounded min: p text size]
		ifTrue: [(p text size * self stopIndex * scale) rounded].
	
	actualStop >= p text size
		ifTrue: [^ super paragraph: p bounds: b color: c].
	
	found := false.
	oldLines := Array new: p lines size.
	
	p lines doWithIndex: [:line :index |
		oldLines at: index put: line last.
		found
			ifFalse: [
				actualStop > line last
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