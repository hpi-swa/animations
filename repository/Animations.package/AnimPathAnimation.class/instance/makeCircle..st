initialization
makeCircle: rho
	"Extrapolates given points to form a circle."
	
	| degrees steps result lastPoint lastDegrees |
	self points size ~= 2 ifTrue: [Error signal: 'You have to set exactly 2 points to extrapolate a circle.'].
	
	degrees := (self points second - self points first) degrees.
	steps := (360.0 / degrees) ceiling.
	
	lastPoint := self points first.
	lastDegrees := degrees.
	result := OrderedCollection with: lastPoint.

	steps timesRepeat: [
		result add: lastPoint + (Point r: rho degrees: lastDegrees) rounded.
		lastPoint := result last.
		lastDegrees := lastDegrees + degrees.
		].
	
	"Always close path to bypass rounding issues."
	result last ~= result first
		ifTrue: [
			self
				setPath: result allButLast
				duration: self prototype duration.
			self closePath]
		ifFalse: [
			self
				setPath: result
				duration: self prototype duration].