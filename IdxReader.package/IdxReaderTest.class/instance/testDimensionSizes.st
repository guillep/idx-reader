tests
testDimensionSizes

	| stream |
	stream := IdxReader onStream: (#[ 0 0 9 3 0 0 0 5 0 0 0 7 0 0 0 28 ] readStream).
	self assert: stream dimensionSizes first equals: 5.
	self assert: stream dimensionSizes second equals: 7.
	self assert: stream dimensionSizes third equals: 28.