registering
register: anAnimation

	self pendingRequests nextPut: (MessageSend receiver: self selector: #registerNow: argument: anAnimation).