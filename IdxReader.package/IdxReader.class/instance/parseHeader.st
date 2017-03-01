setUp
parseHeader
	
	| readDataType |
	self assert: aStream next = 0.
	self assert: aStream next = 0.
	
	readDataType := aStream next.
	self assert: (readDataType between: 8 and: 13).
	dataType := readDataType.
	
	dimensions := aStream next.
	
	dimensionSizes := (1 to: dimensions) collect: [ :index |
		self parseNextDimensionSize ].