Class {
	#name : #BaselineOfBenchmark,
	#superclass : #BaselineOf,
	#category : #BaselineOfBenchmark
}

{ #category : #baselines }
BaselineOfBenchmark >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		
		"Packages"
		spec 
			package: 'Benchmark';
			package: 'Benchmark-Tests' with: [ spec requires: #('Benchmark') ] ].
]
