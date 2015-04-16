canvas
canvas: aCanvas

	[super canvas: (AnimFormCanvas adoptInstance: aCanvas)]
		on: Error do: [super canvas: aCanvas].