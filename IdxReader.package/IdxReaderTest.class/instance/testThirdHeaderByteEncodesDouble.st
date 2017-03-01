tests-type
testThirdHeaderByteEncodesDouble

	| stream |
	stream := IdxReader onStream: (#[ 0 0 13 0 ] readStream).
	self assert: stream hasDoubleData.
	self assert: stream dataSize equals: 8.