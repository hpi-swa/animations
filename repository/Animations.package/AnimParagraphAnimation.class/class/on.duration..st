instance creation
on: morph duration: milliseconds
	
	^ AnimParagraphAnimation new
		morph: morph;
		duration: milliseconds;
		startValue: 0.0; "no text"
		endValue: 1.0; "entire text"
		yourself