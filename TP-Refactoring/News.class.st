Class {
	#name : #News,
	#superclass : #Option,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
News >> getInformation: aUser with: cuoora [
	^ self last: cuoora
]

{ #category : #retrieving }
News >> neededInformation: cuoora [
	^ self mySort: (cuoora questionsToday) 	
	
	
]
