accessing
temporaries
	"Return entries to represent temporary variables, method arguments and block temporaries. 
	Note that the identification of such knowledge is done using SHOUT ranges."
	
	| tempRanges |
	tempRanges := ranges select: [ :each | #(#patternTempVar #patternArg ) includes: each type ].
	tempRanges addAll: self blockTemporaries.
	^ tempRanges collect: 
		[ :each | 
		NECLocalEntry 
			contents: (self sourceOf: each)
			type: each type ]