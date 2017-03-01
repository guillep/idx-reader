tests-type
testThirdHeaderByteEncodesSignedByte

	| stream |
	stream := IdxReader onStream: (#[ 0 0 9 0 ] readStream).
	self assert: stream hasSignedByteData.
	self assert: stream dataSize equals: 1.