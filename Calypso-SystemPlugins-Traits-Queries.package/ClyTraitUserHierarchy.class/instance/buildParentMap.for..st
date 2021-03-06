building
buildParentMap: aHierarchyMap for: aClass
	| allParents eachParent |
	allParents := IdentitySet withAll: aClass traits.  		
	[allParents isEmpty] whileFalse: [
		eachParent := allParents anyOne.
		allParents remove: eachParent.
		(aHierarchyMap includesClass: eachParent) 
			ifTrue: [aHierarchyMap addChild: aClass to: eachParent]
			ifFalse: [ allParents addAll: eachParent traits].
	]