accessing
animations

	^ animations ifNil: [animations := AnimAnimationRegistry new]