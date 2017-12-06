accessing
offsetBlock: aBlock
	"Will be used to calculate the offset dynamically. See #offset."
	
	self startOffsetBlock: aBlock.
	self endOffsetBlock: aBlock.