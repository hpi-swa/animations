accessing
finishedOnce
	"This flag is primarily used by the animation registry to perform garbage collection."

	^ finishedOnce ifNil: [finishedOnce := false]