Class {
	#name : #Post,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Post >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Post >> description [
	^ description
]

{ #category : #accessing }
Post >> description: anObject [
	description := anObject
]

{ #category : #testing }
Post >> hasMorePositiveVotesThan: aPost [
	^ self positiveVotes size > aPost positiveVotes size
]

{ #category : #initialization }
Post >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #'as yet unclassified' }
Post >> negativeVotes [
	^votes reject:[:vote | vote isLike]
]

{ #category : #'as yet unclassified' }
Post >> positiveVotes [
	^votes select:[:vote | vote isLike]
]

{ #category : #'as yet unclassified' }
Post >> sameDate: aDate [
	^ self timestamp asDate = aDate
]

{ #category : #'as yet unclassified' }
Post >> sameUser: aUser [
	^ self user = aUser
]

{ #category : #'as yet unclassified' }
Post >> timestamp [
	^ timestamp
]

{ #category : #'as yet unclassified' }
Post >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #'as yet unclassified' }
Post >> user [
	^ user
]

{ #category : #'as yet unclassified' }
Post >> user: anObject [
	user := anObject
]

{ #category : #'as yet unclassified' }
Post >> votes [
	^ votes
]
