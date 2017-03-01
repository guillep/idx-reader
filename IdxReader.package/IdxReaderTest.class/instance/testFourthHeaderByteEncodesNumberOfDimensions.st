tests
testFourthHeaderByteEncodesNumberOfDimensions

	| stream |
	stream := IdxReader onStream: (#[ 0 0 9 3 0 0 0 0 0 0 0 0 0 0 0 0 ] readStream).
	self assert: stream numberOfDimensions equals: 3.