initialization
set: state in: degrees fromAnimatedMorph: morph
	"See AnimatedImageMorph."
	
	| anim |
	anim := AnimFramesAnimation new
		name: ('{1}({2})' format: {state. degrees});
		target: self;
		frames: morph images copy;
		duration: (morph instVarNamed: #delays) sum;
		loopCount: -1;
		property: #animateFrame:;
		yourself.
	
	^ self
		set: state
		in: degrees
		to: anim