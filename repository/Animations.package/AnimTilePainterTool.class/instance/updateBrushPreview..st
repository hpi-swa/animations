updating
updateBrushPreview: evt

	(self surface bounds containsPoint: evt position)
		ifFalse: []
		ifTrue: [	self brushPreview position: (self tileGridIndexAt: evt position) - (1@1) * self painter tileExtent + self surface topLeft].