updating - private
updateCurrentTime
	"Updates the reference time for each registered animation."
	
	self propertyAnimations do: [:anim | anim updateCurrentTime].
	self graphicsAnimations do: [:anim | anim updateCurrentTime].
	self otherAnimations do: [:anim | anim updateCurrentTime].