interpolating
transformedCanvas: aCanvas

	| lastMax |
	lastMax := self scaled ifFalse: [-1] ifTrue: [
		lastCanvas
			ifNil: [0]
			ifNotNil: [:c | c max]].
		
	lastCanvas := (AnimParagraphCanvas
		on: aCanvas)
			stopIndex: self currentValue;
			relative: (self currentStartValue + self currentEndValue) < 2;
			max: lastMax;
			yourself.
			
	^ lastCanvas