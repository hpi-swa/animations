accessing - private
state: aState
	"#stopped, #paused, #running"
	
	aState ~= state ifTrue: [
		| oldState |
		oldState := state.
		state := aState.
		self changed: #stateChanged with: {oldState. aState}].