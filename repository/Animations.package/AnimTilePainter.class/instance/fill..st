painting
fill: oneOrMoreTiles
	"Randomize the given tiles and fill the entire surface. Remove other tiles first."
	
	| tiles |
	tiles := oneOrMoreTiles isCollection ifTrue: [oneOrMoreTiles] ifFalse: [{oneOrMoreTiles}].

	self surface removeAllMorphs.
	
	1 to: self surfaceExtent y do: [:row |
		1 to: self surfaceExtent x do: [:col |
			self tileAt: col@row put: tiles atRandom]].