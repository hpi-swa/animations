painting
paintAt: aPoint

	self brush ifNil: [^ self].
	(self tileAt: aPoint) form == self brush ifTrue: [^ self].
	self tileAt: aPoint put: self brush.