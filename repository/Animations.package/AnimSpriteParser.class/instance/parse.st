parsing
parse

	| sprite cy |
	[sprite := self nextSprite] whileNotNil: [
		(cy isNil or: [cy ~= y]) ifTrue: [
			map add: OrderedCollection new.
			cy := y].
		map last addLast: sprite].