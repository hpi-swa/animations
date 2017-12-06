*animations-core
hasAnimationRunning
	"Use this query to schedule redraw operations."
	
	^ self animations anySatisfy: [:anim | anim isRunning]