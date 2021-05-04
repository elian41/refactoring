Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'questionRetriever',
		'questions',
		'answers',
		'username',
		'password',
		'topics',
		'following',
		'votes'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance-creation' }
User class >> username: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	^ self new initialize: aUsername password: aPassword questionRetriever: aQuestionRetriever.
]

{ #category : #adding }
User >> addAnswer: anAnswer [
	answers add: anAnswer 

]

{ #category : #adding }
User >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #adding }
User >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #adding }
User >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
User >> answers [
	^ answers
]

{ #category : #accessing }
User >> follow: aUser [
	following add: aUser 
]

{ #category : #accessing }
User >> following [
	^ following
]

{ #category : #protected }
User >> followsQuestions [
	^ self following flatCollect: [ :follow | follow questions ]
]

{ #category : #initialize }
User >> initialize [

	questions := OrderedCollection new.  
	answers := OrderedCollection new. 
	topics := OrderedCollection new. 
	following := OrderedCollection new. 
	votes := OrderedCollection new.
]

{ #category : #initialization }
User >> initialize: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	username := aUsername.
	password := aPassword.
	questionRetriever := aQuestionRetriever
]

{ #category : #accessing }
User >> password [
	^ password
]

{ #category : #private }
User >> password: anObject [
	password := anObject
]

{ #category : #accessing }
User >> questionRetriever [
	^ questionRetriever
]

{ #category : #private }
User >> questionRetriever: aQuestionRetriever [
	questionRetriever := aQuestionRetriever.
]

{ #category : #accessing }
User >> questions [
	^ questions
]

{ #category : #accessing }
User >> questionsOfInterest [
	^ questionRetriever retrieveQuestions: self.
]

{ #category : #accessing }
User >> topics [
	^ topics
]

{ #category : #protected }
User >> topicsQuestions [
	^ self topics flatCollect:[ :topic | topic questions ]
]

{ #category : #accessing }
User >> username [
	^ username
]

{ #category : #private }
User >> username: anObject [
	username := anObject
]

{ #category : #accessing }
User >> votes [
	^ votes
]
