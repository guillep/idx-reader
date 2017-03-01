tests-type
testThirdHeaderByteEncodesUnsignedByte

	| stream |
	stream := IdxReader onStream: (#[ 0 0 8 0 ] readStream).
	self assert: stream hasUnsignedByteData.
	self assert: stream dataSize equals: 1.