instance creation
on: morph text: text duration: milliseconds
	
	^ AnimParagraphAnimation new
		morph: morph;
		duration: milliseconds;
		startValue: 1;
		endValue: text size;
		yourself