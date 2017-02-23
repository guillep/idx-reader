tests
testIdxStreamShouldFailIfFirstTwoBytesAreNotZero

	self should: [IdxReader onStream: (#[ 1 0 ] readStream)] raise: Error.
	self should: [IdxReader onStream: (#[ 0 1 ] readStream)] raise: Error