tests-reading
testNextShort

	| stream matrix |
	stream := IdxReader onStream: (#[ 0 0 10 2 0 0 0 2 0 0 0 2 0 1 1 1 255 1 255 255 ] readStream).
	matrix := stream next.
	
	self assert: ((matrix at: 1) at: 1) equals: 1.
	self assert: ((matrix at: 1) at: 2) equals: 257.
	self assert: ((matrix at: 2) at: 1) equals: -255.
	self assert: ((matrix at: 2) at: 2) equals: -1.