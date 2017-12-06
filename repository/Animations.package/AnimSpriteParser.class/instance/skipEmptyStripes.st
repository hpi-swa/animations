parsing - private
skipEmptyStripes
	"Find the beginning of the next sprite in the current line."

	| cy |
	cy := y.
	[x < form width] whileTrue: [
		(form pixelValueAt: x@cy) = bg
			ifFalse: [cy := y. ^ self]
			ifTrue: [
				cy = (y + h)
					ifTrue: [x := x + 1. cy := y]
					ifFalse: [cy := cy + 1]]].
	endLine := true.