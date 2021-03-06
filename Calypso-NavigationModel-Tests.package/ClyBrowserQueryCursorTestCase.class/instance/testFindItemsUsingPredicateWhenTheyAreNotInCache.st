tests
testFindItemsUsingPredicateWhenTheyAreNotInCache
	
	| allItems |
	cursor cleanCache.
	allItems := cursor findItemsWhere: [:each | each actualObject = Object].
	
	self assert: allItems size equals: 1.
	self assert: allItems first actualObject equals: Object.
	self assert: allItems first isPrepared.
	self assert: allItems first position equals: 2.