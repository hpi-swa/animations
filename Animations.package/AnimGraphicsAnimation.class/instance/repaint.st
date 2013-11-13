updating - private
repaint

	self morph ifNil: [^ self].
	self morph redrawLater.