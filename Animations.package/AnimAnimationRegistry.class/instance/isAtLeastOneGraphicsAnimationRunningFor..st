queries
isAtLeastOneGraphicsAnimationRunningFor: aMorph
	"Use this query to schedule redraw operations."
	
	^ aMorph animations anySatisfy: [:anim | anim isRunning]