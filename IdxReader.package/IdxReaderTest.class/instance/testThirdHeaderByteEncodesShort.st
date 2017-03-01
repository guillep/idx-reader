tests
testThirdHeaderByteEncodesShort

	| stream |
	stream := IdxReader onStream: (#[ 0 0 10 ] readStream).
	self assert: stream hasShortData.
	self assert: stream dataSize equals: 2.