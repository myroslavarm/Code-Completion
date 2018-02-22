ui related
browseWith: anECContext
	"If there's a corresponding class, search for the method there,
	otherwise search for the method in the system."

	(self guessTypeWith: anECContext)
		ifNotNil: [ :clazz|
			Smalltalk tools browser openOnClass: clazz.
			^ true ].
	
	^ self
		findMethodWith: anECContext
		do: [ :class :method | 
			Smalltalk tools browser 
				openOnClass: class 
				selector: method selector. 
			true ]
		ifAbsent: [ :selector | 
			SystemNavigation new 
				browseAllImplementorsOf: selector.
			true ]