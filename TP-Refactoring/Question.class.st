Class {
	#name : #Question,
	#superclass : #Post,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ self new initialize: title description: aDescription user: aUser
		
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^ self new initialize: title description: aDescription topic: aTopic user: aUser
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #'initalize-release' }
Question >> initialize [
	super initialize.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	
]

{ #category : #initialization }
Question >> initialize: aTitle description: aDescription topic: aTopic user: aUser [
	self initialize: aTitle description: aDescription user: aUser.
	self addTopic: aTopic
]

{ #category : #initialization }
Question >> initialize: aTitle description: aDescription user: aUser [
	title := aTitle.
	description := aDescription.
	user := aUser
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> title: aTitle [
	title := aTitle 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
