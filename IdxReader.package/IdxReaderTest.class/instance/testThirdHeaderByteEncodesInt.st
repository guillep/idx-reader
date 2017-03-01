tests-type
testThirdHeaderByteEncodesInt

	| stream |
	stream := IdxReader onStream: (#[ 0 0 11 0 ] readStream).
	self assert: stream hasIntData.
	self assert: stream dataSize equals: 4.