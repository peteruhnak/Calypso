tests
testCheckIfEmpty
	query scope: (ClyMethodScope
		of: ClyAbstractClassExample >> #abstractMethod1 in: environment).
	self deny: query checkEmptyResult.
	
	query scope: (ClyMethodScope of: Object >> #printString in: environment).
	self assert: query checkEmptyResult