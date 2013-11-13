*animations-core
redraw
	"Redraw this morph immediately. Calling this method from within #fullDraw or #draw may lead to infinite recursion."

	self redrawLater.
		
	World displayWorldSafely.