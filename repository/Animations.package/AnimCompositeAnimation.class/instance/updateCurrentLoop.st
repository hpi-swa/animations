updating - private
updateCurrentLoop
	
	self currentAnimation finishedOnce ifTrue: [
		self hasNext ifTrue: [
			
			self startNext.
			
			((self direction = #forward and: [self current = 1])
				or: [self direction = #backward and: [self current = self animations size]])
					ifTrue: [self currentLoop: self currentLoop + 1]]].