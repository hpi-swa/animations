parsing - private
peekWidth
	"Peek the width of the current sprite. Do not change x."
	
	| cx |
	cx := x.
	self skipFilledStripes.
	w := x - cx.
	x := cx.
	endLine := false.