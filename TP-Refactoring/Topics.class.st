Class {
	#name : #Topics,
	#superclass : #Option,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
Topics >> neededInformation: aUser [
	^ self mySort: (aUser topicsQuestions ) 
]
