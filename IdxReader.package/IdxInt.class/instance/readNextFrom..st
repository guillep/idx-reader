reading
readNextFrom: aReadStream 
	
	^ (aReadStream next: 4) longAt: 1 bigEndian: true