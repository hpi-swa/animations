queries
displayFPS

	(Smalltalk includesKey: #frameCountStartTime)
		ifFalse: [Smalltalk at: #frameCountStartTime put: WorldState lastCycleTime].
	(Smalltalk includesKey: #currentFrameCount)
		ifFalse: [Smalltalk at: #currentFrameCount put: 0].
	(Smalltalk includesKey: #lastFPS)
		ifFalse: [Smalltalk at: #lastFPS put: 0].

	(WorldState lastCycleTime - (Smalltalk at: #frameCountStartTime)) < 0
		ifTrue: [
			Smalltalk at: #frameCountStartTime put: WorldState lastCycleTime].

	(WorldState lastCycleTime - (Smalltalk at: #frameCountStartTime)) > 1000
		ifTrue: [
			Smalltalk
				at: #lastFPS put: (Smalltalk at: #currentFrameCount);
				at: #currentFrameCount put: 0;
				at: #frameCountStartTime put: WorldState lastCycleTime].
			
	Smalltalk at: #currentFrameCount put: (Smalltalk at: #currentFrameCount) + 1.
	(Smalltalk at: #lastFPS) asString, ' FPS' displayAt: 0@18.