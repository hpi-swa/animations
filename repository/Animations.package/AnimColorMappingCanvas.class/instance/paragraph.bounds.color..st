drawing
paragraph: paragraph bounds: bounds color: c

	| textColors oldColors |
	textColors := OrderedCollection new.
	paragraph text runs values do: [:array |
		array do: [:attr | (attr isKindOf: TextColor)
			ifTrue: [textColors addIfNotPresent: attr]]].

	oldColors := textColors collect: [:tc | tc color].
	textColors do: [:tc | tc color: (self mapColor: tc color)].

	super paragraph: paragraph bounds: bounds color: c.

	textColors withIndexDo: [:tc :i| tc color: (oldColors at: i)].