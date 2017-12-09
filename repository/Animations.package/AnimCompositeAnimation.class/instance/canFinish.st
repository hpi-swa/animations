testing
canFinish

	^ super canFinish and: [self animations last canFinish]