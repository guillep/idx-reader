reading
readNextFrom: aReadStream 
	
	^ (aReadStream next: 4) floatAt: 1 bigEndian: true