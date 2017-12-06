updating
drawOn: aCanvas

	self currentFrame ifNotNil: [:form |
		aCanvas
			translucentImage: form
			at: self topLeft + form offset].