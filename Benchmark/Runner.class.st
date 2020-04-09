"
Runs a couple of (micro-) bechmarks.

Public API and Key Messages

- runConsole   

"
Class {
	#name : #Runner,
	#superclass : #Object,
	#instVars : [
		'output'
	],
	#category : #Benchmark
}

{ #category : #accessing }
Runner >> output [
	"Method that returns output value"
	^output
]

{ #category : #accessing }
Runner >> output: aTranscript [
	"Method that sets *aTranscript* as a variable output."
	output := aTranscript
]

{ #category : #api }
Runner >> runTask: aTask label: aLabel [
	"Runs *aTask* and outputs its result and elapsed time."
	
	| res elap |
	elap := Time microsecondsToRun: [ res := [ aTask ] ].
	self output show: ('{1} = {2} Elapsed time: {3}s' format: { aLabel. res. (elap/1e6) asFloat }); cr.
	
]
