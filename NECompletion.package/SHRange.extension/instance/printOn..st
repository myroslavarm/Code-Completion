*necompletion
printOn: aStream

	super printOn: aStream. 
	aStream nextPutAll: ' ', type. 
	aStream nextPutAll: ' [', start asString, ' - ', end asString, ']'.
	