actions - special
revealText: text in: milliseconds
	"The target morph or one of its submorphs should be able to display the given text."
	
	^ self animation add: (
		AnimParagraphAnimation
			on: self target
			text: text
			duration: milliseconds)