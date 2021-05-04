Class {
	#name : #Vote,
	#superclass : #Object,
	#instVars : [
		'isLike',
		'timstamp',
		'publication',
		'user'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Vote class >> user: aUser dislikesPublication: aPublication [
	^ self new initialize: aUser publication: aPublication isLike: false. 
]

{ #category : #'instance creation' }
Vote class >> user: aUser likesPublication: aPublication [
	^ self new initialize: aUser publication: aPublication isLike: true.

]

{ #category : #private }
Vote >> dislike [
	isLike := false.
]

{ #category : #initialize }
Vote >> initialize [
	timstamp := DateAndTime now.
	
]

{ #category : #initialization }
Vote >> initialize: aUser publication: aPublication isLike: aBool [
		user := aUser.
		publication := aPublication.
		isLike := aBool. 
]

{ #category : #accessing }
Vote >> isLike [
	^ isLike
]

{ #category : #private }
Vote >> like [
	isLike := true.
]

{ #category : #accessing }
Vote >> publication [
	^ publication
]

{ #category : #private }
Vote >> publication: anObject [
	publication := anObject
]

{ #category : #accessing }
Vote >> user [
	^ user
]

{ #category : #private }
Vote >> user: anObject [
	user := anObject
]
