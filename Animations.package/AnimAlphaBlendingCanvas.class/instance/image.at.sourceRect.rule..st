private
image: aForm at: aPoint sourceRect: sourceRect rule: rule

	| convertedForm applyStaticAlpha |
	convertedForm := self convertForm: aForm.
	applyStaticAlpha := convertedForm == aForm.

	applyStaticAlpha ifFalse: [
		^ myCanvas
			image: convertedForm
			at: aPoint
			sourceRect: sourceRect
			rule: rule
		].

	rule = Form blend ifTrue: [
		^ myCanvas
			image: convertedForm
			at: aPoint
			sourceRect: sourceRect
			rule: Form blendAlpha
			alpha: alpha
		].
	
	rule = Form paint ifTrue:[
		^myCanvas
			image: convertedForm
			at: aPoint
			sourceRect: sourceRect
			rule: Form paintAlpha
			alpha: alpha.
	].

	rule = Form over ifTrue:[
		^myCanvas
			image: convertedForm
			at: aPoint
			sourceRect: sourceRect
			rule: Form blendAlpha
			alpha: alpha.
	].