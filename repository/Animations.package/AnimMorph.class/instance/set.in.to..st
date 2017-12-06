initialization
set: state in: degrees to: anim
	"See #initialize."
	
	"To not loose track of an overwritten animation."
	self currentAnimation
		stop; unregister.
	
	(self animatedStates at: state)
		at: degrees
		put: anim.
	^ anim