*animations-core
fullDrawOnReally: aCanvas
	"Draw the full Morphic structure on the given Canvas."
	
	| transformedCanvas |  
	self visible ifFalse: [^ self].
	(aCanvas isVisible: self fullBounds) ifFalse:[^ self].
	(self hasProperty: #errorOnDraw)
		ifTrue:[^ self drawErrorOn: aCanvas].

	transformedCanvas := self transformedCanvasOn: aCanvas.

	"Note: At some point we should generalize this into some sort of 
	multi-canvas so that we can cross-optimize some drawing operations."
	"Pass 1: Draw eventual drop-shadow"
	self hasDropShadow
		ifTrue: [self drawDropShadowOn: transformedCanvas].
	(self hasRolloverBorder
		and: [(transformedCanvas seesNothingOutside: self bounds) not])
		ifTrue: [self drawRolloverBorderOn: transformedCanvas].

	"Pass 2: Draw receiver itself"
	transformedCanvas roundCornersOf: self during:[
		(transformedCanvas isVisible: self bounds) 					
			ifTrue:[transformedCanvas drawMorph: self].
		self
			drawSubmorphsOn: transformedCanvas;
			drawOverlayOn: transformedCanvas;
			drawDropHighlightOn: transformedCanvas;
			drawMouseDownHighlightOn: transformedCanvas].