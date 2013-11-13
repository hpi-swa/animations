updating
updateCurrentTime: referenceTime
	"This should be called frequently to keep the animation running."

	self isStopped ifTrue: [^ self].
	
	"Set an accurate start time in the first update cycle."
	self startTime ifNil: [
		self startTime: referenceTime].

	self isRunning ifTrue: [
		self
			currentTime: (referenceTime - self startTime) - self pauseDuration;
			updateCurrentLoop;
			updateState].
		
	self isPaused ifTrue: [
		self pauseDuration: (referenceTime - self startTime) - self currentTime].