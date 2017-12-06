updating
updateExtent

	self currentAnimation frames ifNotEmpty: [:frames |
		| newExtent |
		newExtent := 1@1.
		frames do: [:form | newExtent := newExtent max: form extent + form offset].
		self extent: newExtent].