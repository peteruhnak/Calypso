running
queryInScope: scopeClass of: basisObjects

	| resultCursor scope |
	environment := ClyNavigationEnvironment new.
	scope := environment selectScope: scopeClass of: basisObjects.
	
	resultCursor := scope query: query.
	result := resultCursor observedContent.
	resultItems := result items