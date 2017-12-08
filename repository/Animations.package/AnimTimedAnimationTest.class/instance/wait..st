support
wait: milliseconds
	"Wait some time in terms of the main world cycle. Split up waiting time into slices of 5 virtual milliseconds to get close to the real behavior."
	
	self waitNow: 0.
	milliseconds // 5 timesRepeat: [self waitNow: 5].