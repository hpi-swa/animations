*animations-core
transformedCanvasFrom: aCanvas
	"Get the correct canvas for graphics animations."
	
	| transformedCanvas |
	self ignoresColorMappings ifTrue: [^ aCanvas originalCanvas].
	
	transformedCanvas := aCanvas.
	self animations do: [:anim |
		transformedCanvas := anim transformedCanvas: transformedCanvas].
	
	^ transformedCanvas