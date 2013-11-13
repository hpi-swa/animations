instance creation
on: anObject property: aProperty start: aStartValue end: anEndValue duration: milliseconds

	^ self new
		target: anObject;
		property: aProperty;
		startValue: aStartValue;
		endValue: anEndValue;
		duration: milliseconds