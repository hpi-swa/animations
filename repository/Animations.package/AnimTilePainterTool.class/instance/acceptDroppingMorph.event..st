layout
acceptDroppingMorph: m event: e
	"Set brush."
	
	self painter brush: (m passenger isCollection ifTrue: [m passenger first] ifFalse: [m passenger]).
	self mode: #paint.
	self updateBrushPreview: e.