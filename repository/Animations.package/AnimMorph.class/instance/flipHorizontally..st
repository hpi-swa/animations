support
flipHorizontally: anim
	anim frames: (anim frames collect: [:form |
		(form flipBy: #horizontal centerAt: form center) in: [:newForm |
			newForm offset: form offset.
			newForm]]).