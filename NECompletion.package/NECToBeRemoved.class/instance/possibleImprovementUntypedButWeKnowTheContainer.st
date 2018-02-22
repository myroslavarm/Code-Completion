design improvements
possibleImprovementUntypedButWeKnowTheContainer

	"when we are in a class for example NECForTesting which has the variables xxx.
	
	foo: anXXX
	
		xx| 
	
	The context has a completion model that is an UntypedModel 
	This is because the receiver type is unknown (contrary to Point ne )
	now the system does not seem to take advantage that we are in a class
	(even if it proposes xxx as completion so it gets an untyped model but it considers the class variable).
	
	
	
	
	
	"