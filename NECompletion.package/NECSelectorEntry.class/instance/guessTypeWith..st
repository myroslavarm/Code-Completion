operations
guessTypeWith: anECContext
	"If the variable is a class, i return the variable itself or its class name.
	Otherwise i return nil."
	| globalEntry |
	globalEntry := Smalltalk at: contents ifAbsent: [^ nil].
	globalEntry isBehavior ifTrue: [^ globalEntry].
	globalEntry ifNotNil: [^ globalEntry class].
	^ nil