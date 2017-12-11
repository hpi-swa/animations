dropping/grabbing
wantsDroppedMorph: m event: e

	^ m passenger isForm or: [(m passenger isCollection
		and: [m passenger notEmpty])
		and: [m passenger first isForm]]