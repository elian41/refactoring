Class {
	#name : #Option,
	#superclass : #Object,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
Option >> getInformation: aUser with: cuoora [
	^ self last: aUser
]

{ #category : #private }
Option >> last: aInformation [
	^((self neededInformation: aInformation) last: (100 min: (self neededInformation: aInformation) size))
]

{ #category : #private }
Option >> mySort: aCollection [
	^ aCollection asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ]
]

{ #category : #private }
Option >> neededInformation: aData [
	self subclassResponsibility 
]

{ #category : #retrieving }
Option >> retrieveQuestions: aUser with: cuoora [
	^ (self getInformation: aUser with: cuoora) reject: [ :q | q user = aUser ]
]
