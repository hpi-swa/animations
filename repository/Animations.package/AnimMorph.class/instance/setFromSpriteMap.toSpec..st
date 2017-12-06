initialization
setFromSpriteMap: map toSpec: spec
	"Adds sprite from the map to the animations as specified. Appends new frames to animations."
	
	spec do: [:tuple |
		| sprite direction state anim |
		sprite := (map at: tuple first) at: tuple second.
		direction := tuple third.
		state := tuple fourth.
		anim := self get: state in: direction.
		
		anim
			name: ('{1}({2})' format: {state. direction});
			target: self;
			frames: (anim frames copyWith: sprite);
			duration: (anim frames size - 1) * 100 "milliseconds";
			loopCount: -1;
			property: #animateFrame:].