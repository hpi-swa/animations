parsing - private
skipFilledStripes
	"Find the end of the next sprite in the current line."

	| cy |
	cy := y.
	[x < form width] whileTrue: [
		(form pixelValueAt: x@cy) = bg
			ifFalse: [x := x + 1. cy := y]
			ifTrue: [
				cy = (y + h)
					ifTrue: [cy := y. ^ self]
					ifFalse: [cy := cy + 1]]].
	endLine := true.