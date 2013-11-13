control
start: aDeletionPolicy
	"If the animation is paused or stopped the animation will be rewinded and start from the beginning. If the animation is running, nothing will happen."
	
	self isRunning ifFalse: [
		self
			deletionPolicy: aDeletionPolicy;
			reset;
			state: #running].