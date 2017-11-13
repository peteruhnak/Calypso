execution
buildResult: aQueryResult in: aNavigationEnvironment

	| allDone problemMethods result |
	allDone := true.
	problemMethods := OrderedCollection new.
	scope methodsDo: [ :each | 	
		result := scope systemCritic analyze: each.
		result isComplete 
			ifTrue: [ result includesCritiques ifTrue: [ problemMethods add: each ] ]
			ifFalse: [ allDone := false ]].
	allDone ifFalse: [ aQueryResult addMetaProperty: ClyBackgroundProcessingTag instance].
	aQueryResult fillWith: problemMethods.