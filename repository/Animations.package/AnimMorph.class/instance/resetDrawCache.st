updating
resetDrawCache

	self drawMode = #direct ifTrue: [^ self].
	self currentFrame: (Form extent: self extent depth: 32).