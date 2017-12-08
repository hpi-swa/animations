updating - private
tryGarbageCollect

	| interval |
	interval := lastGCTime
		ifNil: [5000]
		ifNotNil: [:t | (t to: DateAndTime now) duration asMilliSeconds].
	
	interval < 0
		ifTrue: [interval := 5000].
	
	interval < 5000
		ifTrue: [^ self].
		
	self garbageCollect.
	
	lastGCTime := DateAndTime now.