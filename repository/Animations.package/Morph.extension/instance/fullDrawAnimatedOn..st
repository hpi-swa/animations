*animations-core
fullDrawAnimatedOn: aCanvas
	
	| transformedCanvas |
	self visible ifFalse: [^ self].
	(aCanvas isVisible: self fullBounds) ifFalse:[^ self].
	(self hasProperty: #errorOnDraw)
		ifTrue:[^ self drawErrorOn: aCanvas].

	"Get the correct canvas for graphics animations."
	transformedCanvas := self ignoresColorMappings
		ifTrue: [aCanvas originalCanvas]
		ifFalse: [Project current animations transformedCanvasFor: self from: aCanvas].
		
	(Project current animations isAtLeastOneGraphicsAnimationRunningFor: self)
		ifTrue: [self invalidRect: (transformedCanvas clipRect intersect: self fullBounds)].
	
	self fullDrawOn: transformedCanvas.