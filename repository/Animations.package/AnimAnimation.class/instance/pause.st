control
pause
	"This will pause the animation. #currentTime remains unchanged until #start or #resume is called."
	
	self isRunning ifTrue: [
		self state: #paused].