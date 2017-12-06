parsing
nextSprite

	| sprite |
	endMap & endLine ifTrue: [^ nil].

	endLine ifTrue: [
		map ifNotEmpty: [
			self skipFilledLines.
			endMap ifTrue: [^ nil]].

		self skipEmptyLines.
		endMap ifTrue: [^ nil].
		
		self peekHeight.
		endLine := false].

	newLine
		ifTrue: [newLine := false]
		ifFalse: [
			self skipFilledStripes.
			endLine ifTrue: [
				newLine := true.
				^ self nextSprite]].
		
	self skipEmptyStripes.
	endLine ifTrue: [
		newLine := true.
		^ self nextSprite].
	
	self peekWidth.
	
	sprite := Form extent: w@h depth: 32.
	form
		displayOn: sprite
		at: (x@y) negated.
	^ sprite