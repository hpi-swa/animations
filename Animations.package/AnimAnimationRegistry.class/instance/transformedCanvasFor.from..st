queries
transformedCanvasFor: aMorph from: aCanvas

	| transformedCanvas |
	transformedCanvas := aCanvas.
	aMorph animations do: [:anim |
		transformedCanvas := anim transformedCanvas: transformedCanvas].
	^ transformedCanvas