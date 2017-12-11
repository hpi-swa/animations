drawing-text
drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c

	| actualStop scale |
	self max ~= -1
		ifTrue: [
			self max
				ifNil: [self max: lastIndex]
				ifNotNil: [:currentMax | self max: (currentMax max: lastIndex)].
			scale := self max / (lastIndex max: 1)]
		ifFalse: [
			scale := 1.0].
		
	actualStop := self relative
		ifFalse: [(self stopIndex * scale) rounded min: lastIndex]
		ifTrue: [(lastIndex * self stopIndex * scale) rounded].
		
	super drawString: s from: firstIndex to: (actualStop min: s size) in: boundsRect font: fontOrNil color: c.