accessing
lastSignal

	self signals ifEmpty: [Error signal: 'No signals were caught.'].
	^ self signals last first