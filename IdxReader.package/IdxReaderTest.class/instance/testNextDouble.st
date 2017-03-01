tests-reading
testNextDouble

	| stream matrix |
	stream := IdxReader onStream: (#[ 0 0 13 2 0 0 0 1 0 0 0 2 63 240 0 0 0 0 0 0 191 240 0 0 0 0 0 0 ] readStream).
	matrix := stream next.

	self assert: ((matrix at: 1) at: 1) equals: 1.0.
	self assert: ((matrix at: 1) at: 2) equals: -1.0.