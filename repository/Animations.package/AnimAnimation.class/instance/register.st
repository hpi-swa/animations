registering
register

	AnimAnimationRegistry value
		ifNil: [self finish]
		ifNotNil: [:registry | registry register: self].