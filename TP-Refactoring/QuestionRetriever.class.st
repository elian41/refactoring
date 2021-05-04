Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'option',
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new initialize: cuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora and: aOption [
	^ self new initialize: cuoora option: aOption
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #initializing }
QuestionRetriever >> initialize [
	option := (Social new).
]

{ #category : #initialization }
QuestionRetriever >> initialize: aCuoora [
	cuoora := aCuoora
]

{ #category : #initialization }
QuestionRetriever >> initialize: aCuoora option: aOption [
	cuoora := aCuoora.
	option := aOption
]

{ #category : #accesing }
QuestionRetriever >> option: anOption [
	option := anOption
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	^option retrieveQuestions: aUser with:cuoora
]
