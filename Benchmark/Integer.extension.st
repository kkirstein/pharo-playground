Extension { #name : #Integer }

{ #category : #'*Benchmark' }
Integer >> fib [
	"Calculates Fibonacci number with a naive recursive implementation"
	
	^ Fibonacci fibAux: self a: 0 b: 1

]

{ #category : #'*Benchmark' }
Integer >> fibIter [
	"Calculates Fibonacci number with a naive recursive implementation"

	| a b tmp |
	a := 1.
	b := 1.
	"^ anInteger to: 1 do: [ :n | a := b. b := a + b. ]."
	^ self < 2
		ifTrue: self
		ifFalse: [ 
			2 to: self - 1 do: [ :n | tmp := a. a := b. b := tmp + b. ].
			b
	]

]

{ #category : #'*Benchmark' }
Integer >> fibNaive [
	"Calculates Fibonacci number with a naive recursive implementation"
	
	^(self < 2) ifTrue: self ifFalse: [(self - 1) fibNaive + (self - 2) fibNaive]

]

{ #category : #'*Benchmark' }
Integer >> isPerfect [
	"Answer whether number is perfect, meaning it is equal to the sum of its dividers."

	| sum |
	sum := 0.
	^ self > 0
		ifTrue:
			[ 1 to: (self - 1) do: [ :i | (self isDivisibleBy: i) ifTrue: [ sum := sum + i ] ].
			sum = self ]
		ifFalse: false
]

{ #category : #'*Benchmark' }
Integer >> perfectNumbers [
	"Answer a collection of perfect number up to given receiver value."

	| res |
	res := OrderedCollection new.
	1 to: self do: [ :i | i isPerfect ifTrue: [ res addLast: i ] ].
	^ res
	
]
