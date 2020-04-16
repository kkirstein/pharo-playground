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
Fibonacci class >> fibAux: n a: a b: b [
	"Auxiliary class method for efficient recursive implemetnation"
	
	^ n = 0 ifTrue: a ifFalse: [ self fibAux: n - 1 a: b b: a + b ]
]
