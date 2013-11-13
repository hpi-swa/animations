accessing
morphicDrawBlock
	"Draw the full Morphic structure on the given Canvas."
	
	^ morphicDrawBlock ifNil: [morphicDrawBlock := [:morph :canvas |
			morph fullDrawOnReally: canvas.]].