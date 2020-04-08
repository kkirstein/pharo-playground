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
	
	self assert: (Fibonacci fib: 0) equals: 0.
	self assert: (Fibonacci fib: 1) equals: 1.
	self assert: (Fibonacci fib: 2) equals: 1.
	self assert: (Fibonacci fib: 3) equals: 2.
	self assert: (Fibonacci fib: 4) equals: 3.
	self assert: (Fibonacci fib: 10) equals: 55.
	self assert: (Fibonacci fib: 30) equals: 832040.
]

{ #category : #tests }
FibonacciTest >> testFibIter [
	"Test iterative implementation of Fibonacci numbers"
	
	self assert: (Fibonacci fibIter: 0) equals: 0.
	self assert: (Fibonacci fibIter: 1) equals: 1.
	self assert: (Fibonacci fibIter: 2) equals: 1.
	self assert: (Fibonacci fibIter: 3) equals: 2.
	self assert: (Fibonacci fibIter: 4) equals: 3.
	self assert: (Fibonacci fibIter: 10) equals: 55.
	self assert: (Fibonacci fibIter: 30) equals: 832040.
]

{ #category : #tests }
FibonacciTest >> testFibNaive [
	"Test naive recursive implementation of Fibonacci numbers"
	
	self assert: (Fibonacci fibNaive: 0) equals: 0.
	self assert: (Fibonacci fibNaive: 1) equals: 1.
	self assert: (Fibonacci fibNaive: 2) equals: 1.
	self assert: (Fibonacci fibNaive: 3) equals: 2.
	self assert: (Fibonacci fibNaive: 4) equals: 3.
	self assert: (Fibonacci fibNaive: 10) equals: 55.
	self assert: (Fibonacci fibNaive: 30) equals: 832040.
]
