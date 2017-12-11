event handling
yellowButtonActivity: evt

	(UIManager default confirm: 'Do you really want to flood fill?')
		ifTrue: [self painter fill: self painter brush].