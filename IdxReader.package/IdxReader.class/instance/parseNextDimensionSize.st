setUp
parseNextDimensionSize
	
	"Dimensions are big endian 4 byte integers"
	^ (aStream next: 4) longAt: 1 bigEndian: true