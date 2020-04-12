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
Runner >> runFibonacci [
	"Runs a number of FIbonacci benchmarks."
	
	self output show: 'Fibonacci Numbers'; cr.
	self output show: '-----------------'; cr.

	self runTask: [ Fibonacci fibNaive: 35 ] label: 'fibNaive(35)'.
	self runTask: [ Fibonacci fib: 1000 ] label: 'fib(1000)'.
	self runTask: [ Fibonacci fibIter: 1000 ] label: 'fibIter(1000)'.

]

{ #category : #api }
Runner >> runPerfectNumber [
	"Runs a number of perfect number benchmarks."
	
	self output show: 'Perfect Numbers'; cr.
	self output show: '---------------'; cr.

	self runTask: [ 10000 perfectNumbers ] label: 'perfectNumbers(10000)'.

]

{ #category : #api }
Runner >> runTask: aTask label: aLabel [
	"Runs *aTask* and outputs its result and elapsed time."
	
	| res elap |
	elap := Time microsecondsToRun: [ res := aTask value ].
	self output show: ('{1} = {2} Elapsed time: {3}ms' format: { aLabel. res. (elap/1e3) asFloat }); cr.
	
]
