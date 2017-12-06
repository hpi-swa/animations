initialization
set: state in: degrees fromForms: someForms
	
	^ self
		set: state
		in: degrees
		to: ((AnimFramesAnimation
			on: self
			with: someForms)
				name: ('{1}({2})' format: {state. degrees}))