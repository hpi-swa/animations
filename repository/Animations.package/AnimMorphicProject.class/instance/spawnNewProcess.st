active process
spawnNewProcess

	uiProcess := [
		[
			World doOneCycle.
		
			"Simulate Animation Framework"
			self animations updateAnimations.	
			
			Processor yield.
		] repeat.
	] newProcess priority: Processor userSchedulingPriority.
	uiProcess resume