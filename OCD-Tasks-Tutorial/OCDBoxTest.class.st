Class {
	#name : #OCDBoxTest,
	#superclass : #TestCase,
	#category : #'OCD-Tasks-Tutorial'
}

{ #category : #tests }
OCDBoxTest >> testMultipleBoxes [
	| boxes |
	"We create a hundred boxes here, that we put into a collection"
	boxes := OrderedCollection new.
	100 timesRepeat: [ boxes add: OCDBox new ].
	self halt.
	"Now, we iterate over the boxes,
	and each time we add an element to each box
	and we print it in the Trancript"
	boxes
		do: [ :b | 
			b addElement: Object new.
			b crTrace ]
]
