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

{ #category : #'instance creation' }
Runner class >> newAndRun [
	"Instantiate new Runner object and run benchmarks."
	
	| runner |
	runner := self new.
	runner output: (Transcript open; clear).

	runner runFibonacci.
	runner runPerfectNumber.
	^runner

]

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
	"Runs a number of Fibonacci benchmarks."
	
	self output show: 'Fibonacci Numbers'; cr.
	self output show: '-----------------'; cr.

	self runTask: [ 35 fibNaive ] label: 'fibNaive(35)'.
	self runTask: [ 1000 fib ] label: 'fib(1000)'.
	self runTask: [ 1000 fibIter ] label: 'fibIter(1000)'.
	
	self output cr.

]

{ #category : #api }
Runner >> runPerfectNumber [
	"Runs a number of perfect number benchmarks."
	
	self output show: 'Perfect Numbers'; cr.
	self output show: '---------------'; cr.

	self runTask: [ 10000 perfectNumbers ] label: 'perfectNumbers(10000)'.
	
	self output cr.

]

{ #category : #api }
Runner >> runTask: aTask label: aLabel [
	"Runs *aTask* and outputs its result and elapsed time."
	
	| res elap |
	elap := Time microsecondsToRun: [ res := aTask value ].
	self output show: ('{1} = {2}' format: { aLabel. res.  }); cr.
	self output show: ('Elapsed time: {1}ms' format: {(elap/1e3) asFloat}); cr.
	
]
