tests
testOtherSignals

	sut
		duration: 50;
		loopCount: 2;
		direction: #backward.
	
	self
		should: spy lastSignal = #directionChanged;
		should: spy lastArguments = {#backward}.
		
	sut start.

	self
		wait: 51;
		should: spy lastSignal = #currentLoopChanged;
		should: spy lastArguments = 2;
		wait: 50;
		should: spy lastSignal = #finished.