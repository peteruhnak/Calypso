navigation
selectPackage: aPackage atClassTag: tagName

	| packageItem targetClassGroup |
	self changeStateBy: [
		packageItem := (packageView findItemsWith: {aPackage}) first.
		packageItem expand.
		targetClassGroup := packageItem childrenItems detect: [:each | each name = tagName ].
	
		packageView selection selectItems: { targetClassGroup }
	]