design improvements
designProblems

	"Ecompletion should not be in ToolRegistry. The Texteditor should have a kind of hook to inject different ecompletion logic."
	
	"NEControler logic forces object (model) using the ecompletion to define stupid method such as guessTypeFor: because the interaction is strange. May be the controller should have a type guesser and only if it does not have one it asks the model. This way if a model has a better type guesser, it can configure the ecompletion to ask it (for example by nilling the defautl type guesser ).
	
guessTypeFor: aString
	^ model isNil ifFalse: [ model guessTypeForName: aString ]
	
"

	"does it make sense to remove Object>>isCodeCompletionAllowed"
	

	"with NE"