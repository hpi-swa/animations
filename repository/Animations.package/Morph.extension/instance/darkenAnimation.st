*animations-support
darkenAnimation

	^ self animations
		detect: [:anim | anim isGraphicsAnimation and: [anim type = #brightness]]
		ifNone: [
			(AnimBrightnessAnimation
				darkenOn: self
				to: 0.2
				duration: 200)
				register]