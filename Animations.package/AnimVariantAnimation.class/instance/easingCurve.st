accessing
easingCurve

	^ easingCurve ifNil: [easingCurve := AnimEasingCurve new]