actions
fadeOutIn: milliseconds
	"Warning: Might flicker because it uses multiple cycles."
	
	self target isMorph ifFalse: [Error signal: 'Only morphs can fade.'].
	
	^ self animation add: ((
		AnimAlphaBlendAnimation
			fadeOutOn: self target
			duration: milliseconds)
				startBlock: [:morph | morph show];
				finishBlock: [:morph | morph hide];
				yourself)