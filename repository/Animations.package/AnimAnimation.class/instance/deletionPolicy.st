accessing - private
deletionPolicy

	^ deletionPolicy ifNil: [deletionPolicy := #deleteWhenFinished]