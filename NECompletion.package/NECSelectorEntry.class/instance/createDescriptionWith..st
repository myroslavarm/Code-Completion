detail information
createDescriptionWith: anECContext
	"Creates description either from looking up the method in a class,
	or in the system."

	(self guessTypeWith: anECContext)
		ifNotNil: [ :clazz|
			^ NECEntryDescription 
					label: self label
					title: clazz printString
					description: clazz comment	].
	^ self
		findMethodWith: anECContext
		do: [:clazz :method | 
			self
				methodSourceDescription: clazz
				method: method ]
		ifAbsent: [:selector | self implementorsDescription: selector]