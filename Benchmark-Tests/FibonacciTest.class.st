"
A FibonacciTest is a test class for testing the behavior of Fibonacci
"
Class {
	#name : #FibonacciTest,
	#superclass : #TestCase,
	#category : #'Benchmark-Tests'
}

{ #category : #tests }
FibonacciTest >> testFib [
	"Test tail-optimzed recursive implementation of Fibonacci numbers"
	
	self assert: (0 fib) equals: 0.
	self assert: (1 fib) equals: 1.
	self assert: (2 fib) equals: 1.
	self assert: (3 fib) equals: 2.
	self assert: (4 fib) equals: 3.
	self assert: (10 fib) equals: 55.
	self assert: (30 fib) equals: 832040.
]

{ #category : #tests }
FibonacciTest >> testFibIter [
	"Test iterative implementation of Fibonacci numbers"
	
	self assert: (0 fibIter) equals: 0.
	self assert: (1 fibIter) equals: 1.
	self assert: (2 fibIter) equals: 1.
	self assert: (3 fibIter) equals: 2.
	self assert: (4 fibIter) equals: 3.
	self assert: (10 fibIter) equals: 55.
	self assert: (30 fibIter) equals: 832040.
]

{ #category : #tests }
FibonacciTest >> testFibNaive [
	"Test naive recursive implementation of Fibonacci numbers"
	
	self assert: (0 fibNaive) equals: 0.
	self assert: (1 fibNaive) equals: 1.
	self assert: (2 fibNaive) equals: 1.
	self assert: (3 fibNaive) equals: 2.
	self assert: (4 fibNaive) equals: 3.
	self assert: (10 fibNaive) equals: 55.
	self assert: (30 fibNaive) equals: 832040.
]
