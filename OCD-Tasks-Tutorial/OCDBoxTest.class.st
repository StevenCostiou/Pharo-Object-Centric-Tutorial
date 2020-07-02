Class {
	#name : #OCDBoxTest,
	#superclass : #TestCase,
	#category : #'OCD-Tasks-Tutorial'
}

{ #category : #tests }
OCDBoxTest >> testMultipleBoxes [

	|boxes aBox|
	"We create a hundred boxes here, that we put into a collection"
	boxes := OrderedCollection new.
	100 timesRepeat: [ boxes add: OCDBox new ].
	
	"Let's take a single, random box"
	aBox := boxes atRandom.
	
	"Now, we iterate 10 times over the boxes,
	and each time we add an element to each box
	and we print it in the Trancript"
	10 timesRepeat: [  
		boxes do:[:b| 
			b addElement: Object new. 
			b crTrace]].
]
