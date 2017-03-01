tests-reading
testNextFloat

	| stream matrix |
	stream := IdxReader onStream: (#[ 0 0 12 2 0 0 0 1 0 0 0 2 63 128 0 0 191 128 0 0 ] readStream).
	matrix := stream next.
	
	self assert: ((matrix at: 1) at: 1) equals: 1.0.
	self assert: ((matrix at: 1) at: 2) equals: -1.0.