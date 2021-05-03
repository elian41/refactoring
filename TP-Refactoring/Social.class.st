Class {
	#name : #Social,
	#superclass : #Option,
	#category : #'TP-Refactoring-Model'
}

{ #category : #private }
Social >> neededInformation: aUser [
	^ self mySort: (aUser followsQuestions) 
]
