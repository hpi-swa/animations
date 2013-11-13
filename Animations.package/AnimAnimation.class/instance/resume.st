control
resume
	"Resumes a paused animation."
	
	self isPaused ifTrue: [
		self state: #running].