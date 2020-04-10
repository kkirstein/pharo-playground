Extension { #name : #Integer }

{ #category : #'*Benchmark' }
Integer >> isPerfect [
	"Answer whether number is perfect, meaning it is equal to the sum of its dividers."

	| sum |
	sum := 0.
	^ self value > 0
		ifTrue:
			[ 1 to: (self value - 1) do: [ :i | (self value isDivisibleBy: i) ifTrue: [ sum := sum + i ] ].
			sum = self value ]
		ifFalse: false
]

{ #category : #'*Benchmark' }
Integer >> perfectNumbers [
	"Answer a collection of perfect number up to given receiver value."

	| res |
	res := OrderedCollection new.
	1 to: self value do: [ :i | i isPerfect ifTrue: [ res addLast: i ] ].
	^ res
	
]
