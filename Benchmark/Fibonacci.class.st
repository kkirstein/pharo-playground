"
Calculates Fibonacci numbers by different implementations

Public API and Key Messages

- fibNaive: anInteger   
- fib: anInteger
- fibIter: anInteger 

"
Class {
	#name : #Fibonacci,
	#superclass : #Object,
	#category : #Benchmark
}

{ #category : #api }
Fibonacci class >> fib: anInteger [
	"Calculates Fibonacci number with a naive recursive implementation"
	
	^ self fibAux: anInteger a: 0 b: 1

]

{ #category : #private }
Fibonacci class >> fibAux: n a: a b: b [
	"Auxiliary class method for efficient recursive implemetnation"
	
	^ n = 0 ifTrue: a ifFalse: [ self fibAux: n - 1 a: b b: a + b ]
]

{ #category : #api }
Fibonacci class >> fibNaive: anInteger [
	"Calculates Fibonacci number with a naive recursive implementation"
	
	^(anInteger < 2) ifTrue: anInteger ifFalse: [(self fibNaive: (anInteger-1)) + (self fibNaive: (anInteger-2))]

]
