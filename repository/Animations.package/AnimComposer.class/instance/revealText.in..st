actions - special
revealText: text in: milliseconds
	"The target morph or one of its submorphs should be able to display the given text."
	
	self animation add: (
		AnimParagraphAnimation new
			morph: self target;
			duration: milliseconds;
			startValue: 1;
			endValue: text size; "or via endOffsetBlock?! Is the text changing?"
			yourself).