tests
testNextUnsignedByte

	| stream matrix |
	stream := IdxReader onStream: (#[ 0 0 8 2 0 0 0 2 0 0 0 2 1 2 3 4 5 6 7 8 ] readStream).
	matrix := stream next.
	
	self assert: ((matrix at: 1) at: 1) equals: 1.
	self assert: ((matrix at: 1) at: 2) equals: 2.
	self assert: ((matrix at: 2) at: 1) equals: 3.
	self assert: ((matrix at: 2) at: 2) equals: 4.
	
	matrix := stream next.
	
	self assert: ((matrix at: 1) at: 1) equals: 5.
	self assert: ((matrix at: 1) at: 2) equals: 6.
	self assert: ((matrix at: 2) at: 1) equals: 7.
	self assert: ((matrix at: 2) at: 2) equals: 8.