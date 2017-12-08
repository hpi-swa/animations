updating - private
updateCurrentLoop
	
	self currentAnimation finishedOnce ifTrue: [
		self hasNext ifTrue: [
			
			self startNext.
			
			"After each cycle, increase the loop count."
			((self direction = #forward and: [self currentIndex = 1])
				or: [self direction = #backward and: [self currentIndex = self animations size]])
					ifTrue: [self currentLoop: self currentLoop + 1]]].