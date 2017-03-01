data-type
dataSize
	
	self hasUnsignedByteData ifTrue: [ ^ 1 ].
	self hasSignedByteData ifTrue: [ ^ 1 ].
	self hasShortData ifTrue: [ ^ 2 ].
	self hasIntData ifTrue: [ ^ 4 ].
	self hasFloatData ifTrue: [ ^ 4 ].
	self hasDoubleData ifTrue: [ ^ 8 ].
	self error: 'Unimplemented data type'