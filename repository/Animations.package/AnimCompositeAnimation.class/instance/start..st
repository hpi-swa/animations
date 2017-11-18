control
start: aDeletionPolicy

	self isRunning ifFalse: [
		self register. "We have to be registered since we automatically register our animations. See #toStart and #toEnd."
		super start: aDeletionPolicy.
		self currentAnimation start: aDeletionPolicy].
