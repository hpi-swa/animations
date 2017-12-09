actions - special
do: block
	"Execute some code on the target object. DO NOT closure that object via 'self' in the given block! Otherweise animGC will get tricky."
	
	"Clean up the block argument to help animGC by discarding some receivers in outer contexts."
	block outerContextsDo: [:ctxt |
		ctxt receiver == self target ifTrue: [ctxt receiver: nil]].
		
	self animation add: (
		AnimAnimation new
			name: 'do';
			duration: 1;
			loopCount: 1;
			finishBlock: [(target at: 1) ifNotNil: [:obj | block value: obj]];
			yourself).