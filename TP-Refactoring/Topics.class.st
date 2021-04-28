Class {
	#name : #Topics,
	#superclass : #Option,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
Topics >> getInformation: aUser with: cuoora [
	^ self last: aUser
]

{ #category : #private }
Topics >> neededInformation: aUser [
	^ self mySort: (aUser topicsQuestions ) 
]
