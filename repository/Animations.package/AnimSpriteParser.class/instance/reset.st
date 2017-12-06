parsing
reset

	map := OrderedCollection new.
	x := 0.
	y := 0. "top of current line"
	h := 0. "height of current line/sprite"
	w := 0. "width of current sprite"
	endMap := false.
	endLine := true.
	newLine := true.