event handling
keyDown: evt

	evt keyCharacter asLowercase = $x
		ifTrue: [
			self mode = #paint ifTrue: [self mode: #erase] ifFalse: [self mode: #paint]].