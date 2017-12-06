support
flipVertically: anim

	anim frames: (anim frames collect: [:form |
		(form flipBy: #vertical centerAt: form center) in: [:newForm |
			newForm offset: form offset.
			newForm]]).