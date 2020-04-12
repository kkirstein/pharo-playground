Extension { #name : #Integer }

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
