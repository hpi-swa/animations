initialize
installPasteUpAsWorld: pasteUpMorph

	super installPasteUpAsWorld: pasteUpMorph.
	world initForProject: AnimWorldState new.