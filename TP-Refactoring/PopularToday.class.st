Class {
	#name : #PopularToday,
	#superclass : #Option,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
PopularToday >> getInformation: aUser with: cuoora [
	^ self last: cuoora
]

{ #category : #private }
PopularToday >> neededInformation: cuoora [
	^self mySort:((cuoora questionsToday) select:[:q | q positiveVotes size >= cuoora averageVotes]) 
]
