testing
isRegistered

	^ AnimAnimationRegistry value
		ifNil: [false]
		ifNotNil: [:registry | registry isRegistered: self]