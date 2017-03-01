tests-type
testThirdHeaderByteEncodesShort

	| stream |
	stream := IdxReader onStream: (#[ 0 0 10 0 ] readStream).
	self assert: stream hasShortData.
	self assert: stream dataSize equals: 2.