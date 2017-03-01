reading
readNextItem
	
	self hasUnsignedByteData ifTrue: [ ^ aStream next ].