actions - special
revealTextIn: milliseconds
	
	^ self animation add: (
		AnimParagraphAnimation new
			morph: self target;
			duration: milliseconds;
			startValue: 0.0;
			endValue: 1.0;
			yourself)