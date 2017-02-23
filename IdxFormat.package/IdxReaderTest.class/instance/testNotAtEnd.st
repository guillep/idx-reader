tests
testNotAtEnd

	| stream |
	stream := IdxReader onStream: (#[ 0 0 9 3 0 0 0 5 0 0 0 7 0 0 0 28 1 1 1 ] readStream).
	self deny: stream atEnd