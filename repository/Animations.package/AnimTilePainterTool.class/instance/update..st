updating
update: aspect

	super update: aspect.
	
	aspect = #surfaceExtent ifTrue: [
		self extent: self surface extent + (self margin * 2).
		self surface topLeft: self topLeft + self margin].

	aspect = #brush ifTrue: [ | pos |
		pos := self topLeft.
		self brushPreview ifNotNil: [:m | pos := m topLeft. m delete].
		
		self mode = #erase
			ifTrue: [
				self brushPreview: (Morph new extent: self painter tileExtent; color: (Color red alpha: 0.2); yourself).
				self brushPreview borderColor: Color red]
			ifFalse: [
				self brushPreview: self brush asMorph.
				self brushPreview borderColor: Color black].

		self brushPreview
			borderWidth: 2;
			topLeft: pos. 
			
		self addMorph: self brushPreview].