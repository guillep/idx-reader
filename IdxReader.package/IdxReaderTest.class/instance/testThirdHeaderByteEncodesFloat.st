tests-type
testThirdHeaderByteEncodesFloat

	| stream |
	stream := IdxReader onStream: (#[ 0 0 12 0 ] readStream).
	self assert: stream hasFloatData.
	self assert: stream dataSize equals: 4.