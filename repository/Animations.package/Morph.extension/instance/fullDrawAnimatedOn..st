*animations-core
fullDrawAnimatedOn: aCanvas
	
	| transformedCanvas |
	self visible ifFalse: [^ self].
	(aCanvas isVisible: self fullBounds) ifFalse:[^ self].
	Project current isAnimatedMorphic ifFalse: [^ self fullDrawOn: aCanvas].
	
	(self hasProperty: #errorOnDraw)
		ifTrue:[^ self drawErrorOn: aCanvas].

	transformedCanvas := self transformedCanvasFrom: aCanvas.	
	self hasAnimationRunning
		ifTrue: [self invalidRect: (transformedCanvas clipRect intersect: self fullBounds)].
	
	self fullDrawOn: transformedCanvas.