"
A PerfectNumberTest is a test class for testing the behavior of PerfectNumber
"
Class {
	#name : #PerfectNumberTest,
	#superclass : #TestCase,
	#category : #'Benchmark-Tests'
}

{ #category : #tests }
PerfectNumberTest >> testIsPerfect [
	"Tests predicate for perfect numbers"
	
	self assert: -1 isPerfect equals: false.
	self assert: 0 isPerfect equals: false.
	self assert: 1 isPerfect equals: false.
	self assert: 2 isPerfect equals: false.
	self assert: 5 isPerfect equals: false.
	self assert: 6 isPerfect equals: true.
	self assert: 7 isPerfect equals: false.
	self assert: 27 isPerfect equals: false.
	self assert: 28 isPerfect equals: true.
	self assert: 29 isPerfect equals: false.
	
]
