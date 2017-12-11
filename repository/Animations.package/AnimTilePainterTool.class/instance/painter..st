accessing
painter: anObject

	painter ifNotNil: [:p |
		p removeDependent: self.
		self removeAllMorphs].
	painter := anObject.
	painter ifNotNil: [:p | 
		p addDependent: self.
		self addMorph: p surface.
		self update: #surfaceExtent.
		self update: #brush].