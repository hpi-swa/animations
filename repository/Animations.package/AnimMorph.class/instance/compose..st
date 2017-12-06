as yet unclassified
compose: block

	| composer |
	composer := AnimComposer new
		target: self;
		yourself.
		
	block value: composer.
	
	composer animation
		start;
		register.
		
	^ composer animation