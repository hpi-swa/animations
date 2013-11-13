accessing
direction: aDirection
	"#forward, #backward"
	
	aDirection ~=  direction ifTrue: [
		direction := aDirection.
		self changed: #directionChanged with: {aDirection}].