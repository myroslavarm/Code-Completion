design improvements
howSupportTheFactThatLibrariesCaninfluenceTheCompletion

	"
	NECContext defines the following method 
	
	guessArgument: aSHRange 
		| name |
			name := self sourceOf: aSHRange.
	(name = 'html') ifTrue: [
		 Smalltalk globals at: #WAHtmlCanvas ifPresent: [ :canvasClass | ^canvasClass].
		 Smalltalk globals at: #WARenderCanvas ifPresent: [ :canvasClass | ^canvasClass]].
	^ NECInstVarTypeGuesser getClassFromTypeSuggestingName: name
	
	What we see here is that there no nice way (such as a registration mechanism to let a library specify some hints for the completion algorithm)
	
	"