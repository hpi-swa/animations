initialization
set: state in: degrees fromFileNamed: fileName
	"GIF only at the moment."
	
	^ self
		set: state
		in: degrees
		fromAnimatedMorph: (AnimatedImageMorph fromGIFFileNamed: fileName)