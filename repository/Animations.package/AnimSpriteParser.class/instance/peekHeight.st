parsing - private
peekHeight
	"Peek the height of the current line of sprites. Do not change y."
	
	| cy |
	cy := y.
	self skipFilledLines.
	h := y - cy.
	y := cy.
	endMap := false.