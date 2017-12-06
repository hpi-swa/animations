updating
animateFrame: aForm

	lastFrame == aForm ifTrue: [^ self].
	
	self drawMode = #direct ifTrue: [
		self currentFrame: aForm].
	
	self drawMode = #merged ifTrue: [
		aForm displayOn: self currentFrame at: 0@0 rule: Form paint].
	
	self drawMode = #mergedDiff ifTrue: [
		lastFrame ifNotNil: [:obsoleteDiff |
			obsoleteDiff displayOn: self currentFrame at: 0@0 rule: Form erase].
		aForm displayOn: self currentFrame at: 0@0 rule: Form paint]. 
	
	self redrawLater.
	lastFrame := aForm.