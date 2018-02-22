private
methodSourceDescription: aClass method: aCompiledMethod 
	"I return if it's a class or a method, its class name, and the implementation."
	| styler styledText |
	
	styler := SHTextStylerST80 new.
	styler classOrMetaClass: aClass.
	styledText := styler styledTextFor: (aCompiledMethod sourceCode) asText.
	self halt.
	^ NECEntryDescription
		label: self label
		title: aClass printString
		description: styledText