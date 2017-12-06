initialization
initializeAnimations

	animatedStates := OrderedDictionary new.

	self class knownStates do: [:state | | directions |
		directions := OrderedDictionary new.
		self class knownDirections do: [:deg | directions at: deg put: AnimFramesAnimation null].
		animatedStates at: state put: directions].
	
	currentState := self class knownStates first.
	currentDirection := self class knownDirections first.