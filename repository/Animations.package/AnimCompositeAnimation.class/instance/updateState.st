updating - private
updateState
	"We assume that #updateCurrentLoop is called before this. So, if we could not manage to get one of our animations running, we are finished."
	
	self currentAnimation finishedOnce
		ifTrue: [self finish].