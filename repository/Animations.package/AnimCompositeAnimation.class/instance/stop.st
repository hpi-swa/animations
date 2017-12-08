control
stop

	self currentAnimation stop.
	super stop.
	
	"We couple start-stop to registration because we register our animations automatically."
	self unregister.
	self currentAnimation unregister.