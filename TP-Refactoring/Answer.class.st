Class {
	#name : #Answer,
	#superclass : #Post,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: anAnswer user: aUser question: aQuestion [
	^ self new initialize: anAnswer user: aUser question: aQuestion
]

{ #category : #initialization }
Answer >> initialize: anAnswer user: aUser question: aQuestion [
	description := anAnswer.
	user := aUser.
	question := aQuestion
]

{ #category : #testing }
Answer >> isTopAnswer [
	.
	^ self positiveVotes >=  ((question sum: [:answer | answer positiveVotes size ]) / question answer size )
]

{ #category : #private }
Answer >> question: aQuestion [
	question := aQuestion 
]
