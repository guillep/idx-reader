tests-reading
testAtEnd

	| stream |
	stream := IdxReader onStream: (#[ 0 0 9 3 0 0 0 5 0 0 0 7 0 0 0 28 ] readStream).
	self assert: stream atEnd