instance creation
on: morph duration: milliseconds

	(morph respondsTo: #text)
		ifFalse: [Error signal: 'Please use an appropriate morph or build the animation yourself.'].
	
	^ AnimParagraphAnimation new
		morph: morph;
		duration: milliseconds;
		startValue: 1;
		endValue: 0;
		endOffsetBlock: [:tm | tm text size];
		yourself