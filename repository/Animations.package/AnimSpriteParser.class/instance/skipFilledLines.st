parsing - private
skipFilledLines
	"Advance the cursor to the next line without sprites."
	
	x := 0.
	[y < form height] whileTrue: [
		(form pixelValueAt: x@y) = bg
			ifFalse: [y := y + 1. x := 0]
			ifTrue: [
				x = form width
					ifTrue: [x := 0. ^ self]
					ifFalse: [x := x + 1]]].
	endMap := true.