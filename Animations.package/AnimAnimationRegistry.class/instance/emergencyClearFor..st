error handling
emergencyClearFor: anExeption

	(Process forContext: anExeption signalerContext copyStack priority: Processor activePriority)
		debugWithTitle: anExeption description.
		
	self clear.
	self inform: 'There was an exception in the Animations framework.
All animations were cleared.

A debugger should have been appeared.'.