Class {
	#name : #MyCounter,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #Counter
}

{ #category : #API }
MyCounter >> decrement [
	"This method adds 1 to variable value."
	self value: (value - 1)
]

{ #category : #API }
MyCounter >> increment [
	"This method adds 1 to variable value."
	self value: (value + 1)
]

{ #category : #initialization }
MyCounter >> init [
  "Method for initialization.
  Setting variables to some default values. For example 0."
  value := 0
]

{ #category : #accessing }
MyCounter >> value [
	"Method that returns variable value."
	^value
	
]

{ #category : #accessing }
MyCounter >> value: anInteger [
	"Method that sets *anInteger* as a variable value."
	value := anInteger
	
]
