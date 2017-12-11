control
start
	"Text rendering is expensive. Since the purpose of this animation is to show the entire paragraph after it has finished, we can safely delete it."
	
	self start: #deleteWhenFinished.