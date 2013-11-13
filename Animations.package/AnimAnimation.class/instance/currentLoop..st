accessing - private
currentLoop: anInteger

	currentLoop ~= anInteger ifTrue: [
		currentLoop := anInteger.
		self changed: #currentLoopChanged with: currentLoop].