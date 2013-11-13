tests
testSignals

	sut
		duration: 50;
		start.
	
	self
		should: spy lastSignal = #stateChanged;
		should: spy lastArguments = {#stopped. #running}.
		
	sut pause.

	self
		should: spy lastSignal = #stateChanged;
		should: spy lastArguments = {#running. #paused}.
		
	sut stop.

	self
		should: spy lastSignal = #stateChanged;
		should: spy lastArguments = {#paused. #stopped}.
		
	sut
		start;
		stop.
	
	self
		should: spy lastSignal = #stateChanged;
		should: spy lastArguments = {#running. #stopped}.
