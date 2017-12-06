initialization
initializeFrom: aForm

	form := aForm.
	bg := form pixelValueAt: 0@0.
	
	self reset.