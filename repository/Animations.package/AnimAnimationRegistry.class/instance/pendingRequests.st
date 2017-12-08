accessing - private
pendingRequests
	^ pendingRequests ifNil: [pendingRequests := SharedQueue new]