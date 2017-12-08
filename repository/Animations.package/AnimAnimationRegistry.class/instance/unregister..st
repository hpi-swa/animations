registering
unregister: anAnimation
	
	self pendingRequests nextPut: (MessageSend receiver: self selector: #unregisterNow: argument: anAnimation).