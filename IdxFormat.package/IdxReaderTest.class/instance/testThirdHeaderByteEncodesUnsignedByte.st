tests
testThirdHeaderByteEncodesUnsignedByte

	| stream |
	stream := IdxReader onStream: (#[ 0 0 8 ] readStream).
	self assert: stream hasUnsignedByteData.
	self assert: stream dataSize equals: 1.