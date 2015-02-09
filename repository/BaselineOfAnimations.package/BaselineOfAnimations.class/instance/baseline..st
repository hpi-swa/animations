baseline
baseline: spec
	<baseline>
	spec for: #common do: [
		spec package: 'Animations' with: [
			spec preLoadDoIt: #preLoad; postLoadDoIt: #postLoad].
		spec
			group: 'default' with: #('Animations');
			group: 'TravisCI' with: #('Animations')].