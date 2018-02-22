*NECompletion
isCompletionCharacter
	"I defined the logic that completion can only happen with alphanumeric : characters."
	^ self isAlphaNumeric or: [ self = $: ]