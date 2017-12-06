parsing - private
skipEmptyLines
	"Advance the cursor to the next line with sprites."
	
	x := 0.
	[y < form height] whileTrue: [
		(form pixelValueAt: x@y) = bg
			ifFalse: [x := 0. ^ self]
			ifTrue: [
				x = form width
					ifTrue: [y := y + 1. x := 0]
					ifFalse: [x := x + 1]]].
	endMap := true.