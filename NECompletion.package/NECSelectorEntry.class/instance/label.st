accessing
label
	"I return whether the variable is a class or a method."
	^ (self guessTypeWith: nil) ifNil:[ 'method' ] ifNotNil: [ 'class' ].