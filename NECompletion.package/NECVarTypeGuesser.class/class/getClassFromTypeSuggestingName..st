private
getClassFromTypeSuggestingName: aString
	"Try to return the class represented by aString. This method uses as heuristics either the fact that aString represents directly a class or that the className starts at the first uppercase letter occurrence."

	"(self getClassFromTypeSuggestingName: 'Point')
	>>> Point"

	"(self getClassFromTypeSuggestingName: 'aPoint')
	>>> Point"

	| firstUppercaseLetter className  aClass |
	className := String streamContents: [ : aStream |
		aStream nextPut: aString first asUppercase.
		aStream nextPutAll: (aString copyFrom: 2 to: aString size)]. 
	aClass := self classFrom: className.
	(aClass isKindOf: Class)
		ifTrue: [ ^ aClass ].
	firstUppercaseLetter := aString indexOfFirstUppercaseCharacter.
	className := firstUppercaseLetter > 1
		ifTrue: [ aString copyFrom: firstUppercaseLetter to: aString size ]
		ifFalse: [ ^ nil ].
	aClass := self classFrom: className.
	(aClass isKindOf: Class)
		ifTrue: [ ^ aClass ].
	^ nil