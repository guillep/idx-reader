tests-reading
testNextSignedByte

	| stream matrix |
	stream := IdxReader onStream: (#[ 0 0 9 2 0 0 0 2 0 0 0 2 129 255 1 2 129 255 1 2 ] readStream).
	matrix := stream next.
	
	self assert: ((matrix at: 1) at: 1) equals: -127.
	self assert: ((matrix at: 1) at: 2) equals: -1.
	self assert: ((matrix at: 2) at: 1) equals: 1.
	self assert: ((matrix at: 2) at: 2) equals: 2.
	
	matrix := stream next.
	
	self assert: ((matrix at: 1) at: 1) equals: -127.
	self assert: ((matrix at: 1) at: 2) equals: -1.
	self assert: ((matrix at: 2) at: 1) equals: 1.
	self assert: ((matrix at: 2) at: 2) equals: 2.