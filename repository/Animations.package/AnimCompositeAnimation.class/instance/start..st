control
start: aDeletionPolicy

	self isRunning ifFalse: [
		self register.
		self currentAnimation register.
		
		super start: aDeletionPolicy.
		self currentAnimation start: aDeletionPolicy].