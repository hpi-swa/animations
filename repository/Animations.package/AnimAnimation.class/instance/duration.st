accessing
duration

	^ duration ifNil: [Error signal: 'Animation duration was not set!']