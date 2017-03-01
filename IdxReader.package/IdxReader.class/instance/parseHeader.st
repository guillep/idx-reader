setUp
parseHeader
	
	| readDataType |
	self assert: aStream next = 0.
	self assert: aStream next = 0.
	
	readDataType := aStream next.
	self assert: (readDataType between: 8 and: 13).
	dataType := self types
		at: readDataType
		ifAbsent: [ self error: ('TypeTag "{1}" not supported' format: { readDataType asString }) ].
	
	dimensions := aStream next.
	
	dimensionSizes := (1 to: dimensions) collect: [ :index |
		self parseNextDimensionSize ].