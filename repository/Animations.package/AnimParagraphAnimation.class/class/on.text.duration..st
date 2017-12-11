instance creation
on: morph text: text duration: milliseconds
	"Animate a specific amount of characters."
	
	^ AnimParagraphAnimation new
		morph: morph;
		duration: milliseconds;
		startValue: 1;
		endValue: text size;
		yourself