Class {
	#name : #Social,
	#superclass : #Option,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
Social >> getInformation: aUser with: cuoora [
	^ self last: aUser
]

{ #category : #private }
Social >> neededInformation: aUser [
	^ self mySort: (aUser followsQuestions) 
]
