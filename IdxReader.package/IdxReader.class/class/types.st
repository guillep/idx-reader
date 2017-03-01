types
types
	
	Types ifNil: [ 
		Types := Dictionary new.
		Types at: 8  put: IdxUnsignedByte new.
		Types at: 9  put: IdxSignedByte new.
		Types at: 10 put: IdxShort new.
		Types at: 11 put: IdxInt new.
		Types at: 12 put: IdxFloat new.
		Types at: 13 put: IdxDouble new ].
	^ Types