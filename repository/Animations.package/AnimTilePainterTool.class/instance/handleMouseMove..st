events-processing
handleMouseMove: evt

	evt wasHandled
		ifFalse: [self mouseMove: evt. evt wasHandled: true].