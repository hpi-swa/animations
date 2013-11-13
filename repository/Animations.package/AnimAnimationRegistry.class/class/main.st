instance creation
main
	"Return the main registry for animations that is queried in each world cycle."
	
	^ instance ifNil: [instance := self new]