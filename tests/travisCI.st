| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  baseline: 'Animations';
  repository: 'filetree://', gitPath, '/animations/repository';
  get.

Metacello new
  baseline: 'Animations';
  repository: 'filetree://', gitPath, '/animations/repository';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfAnimations' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

