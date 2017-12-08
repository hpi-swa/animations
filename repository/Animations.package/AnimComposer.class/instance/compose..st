actions - special
compose: block

	| composer |
	composer := AnimComposer new
		target: self target;
		defaultDuration: self defaultDuration;
		yourself.
		
	block value: composer.
	
	self animations add: composer animation.