printing
printOn: aStream

	super printOn: aStream.
	clazz ifNotNil: 
				[ aStream nextPutAll: ' ('.
				clazz printOn: aStream.
				aStream nextPutAll: ')' ]