actions - special
do: block
	"Execute some code."
	
	self animation add: (
		AnimAnimation new
			duration: 1;
			loopCount: 1;
			finishBlock: [block cull: self target];
			yourself).