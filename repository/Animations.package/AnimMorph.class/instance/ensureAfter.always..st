animation control
ensureAfter: firstState always: secondState
	"Use this to chain animations such as 'stand up' then 'stop'. Call this AFTER you set up the animations for all directions."

	(self animatedStates at: firstState) valuesDo: [:anim |
		anim isInfinite ifTrue: [anim loopCount: 1].
		anim finishBlock: [self lookLike: secondState]].