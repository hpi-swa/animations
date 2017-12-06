instance creation
null
	"Creates a new animation that does nothing. Note that you should share null animations due to the registry mechanism."

	^ self new
		name: '(null animation)';
		duration: 1;
		yourself