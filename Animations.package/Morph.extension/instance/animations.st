*animations-core
animations

	^ self
		valueOfProperty: #animations
		ifAbsentPut: [OrderedCollection new]