updating - private
updateRegistry

	| msg |
	[msg := self pendingRequests nextOrNil]
		whileNotNil: [msg value].