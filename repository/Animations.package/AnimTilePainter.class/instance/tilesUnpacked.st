accessing
tilesUnpacked
	"Creates a list of associations from tile to index in map. Useful for browing and manual editing."
	
	| result |
	result := OrderedCollection new.
	1 to: self palette size do: [:row |
		1 to: (self palette at: row) size do: [:col |
			result add: ((self palette at: row) at: col) -> (col@row)]].
	 ^ result