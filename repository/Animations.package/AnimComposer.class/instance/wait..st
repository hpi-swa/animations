actions
wait: milliseconds

	self animation add: (
		AnimAnimation new
			name: 'wait';
			duration: milliseconds;
			yourself).