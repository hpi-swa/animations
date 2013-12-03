baseline
baseline: spec
	<baseline>
	spec for: #common do: [
		spec package: 'Animations'.
		spec
			group: 'default' with: #('Animations');
			group: 'TravisCI' with: #('Animations')].