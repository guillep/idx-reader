tests
testIdxStreamShouldNotFailIfFirstTwoBytesAreZero

	"This should not fail"
	IdxReader onStream: (#[ 0 0 9 ] readStream)