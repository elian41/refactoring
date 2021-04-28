Class {
	#name : #Option,
	#superclass : #Object,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
Option >> getInformation: aUser with: cuoora [
	self subclassResponsibility 
]

{ #category : #private }
Option >> last: aInformation [
	^((self neededInformation: aInformation) last: (100 min: (self neededInformation: aInformation) size))
]

{ #category : #enumerating }
Option >> myReject: aCollection with: aUser [
	^ aCollection reject: [ :q | q user = aUser ]
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
	^self myReject: (self getInformation: aUser with: cuoora) with: aUser 
]
