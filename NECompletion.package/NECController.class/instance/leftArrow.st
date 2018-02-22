keyboard
leftArrow
	"I return false when the arrow is at its left-most position.
	Otherwise i return true."
	(menuMorph hideDetail)	
			ifFalse: [ 
				self closeMenu.
				^ false ].	
	^ true