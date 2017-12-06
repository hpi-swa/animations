support
animationsDo: block
	
	self animatedStates keysAndValuesDo: [:state :directions |
		directions keysAndValuesDo: [:direction :animation |
			block cull: animation cull: direction cull: state]].