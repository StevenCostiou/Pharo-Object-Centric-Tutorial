"
I am a simple box of objects: use #addElement: and #removeElement: to add/remove objects.
"
Class {
	#name : #OCDBox,
	#superclass : #Object,
	#instVars : [
		'elements',
		'name'
	],
	#category : #'OCD-Tasks-Tutorial'
}

{ #category : #adding }
OCDBox >> addElement: anObject [
	elements add: anObject.
	name := 'Box of ', elements size printString, ' elements'
]

{ #category : #initialization }
OCDBox >> initialize [
	elements := OrderedCollection new.
	name := ''
]

{ #category : #accessing }
OCDBox >> name: anObject [
	name := anObject
]

{ #category : #printing }
OCDBox >> printString [
	^name
]

{ #category : #adding }
OCDBox >> removeElement: anObject [
	elements remove: anObject.
	name := 'Box of ', elements size, ' elements'
]
