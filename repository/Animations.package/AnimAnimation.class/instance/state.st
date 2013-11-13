accessing
state

	^ state ifNil: [state := #stopped]