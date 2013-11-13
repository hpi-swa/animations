private
image: aForm at: aPoint sourceRect: sourceRect rule: rule

	^ myCanvas
		image: (self convertForm: aForm)
		at: aPoint
		sourceRect: sourceRect
		rule: rule.