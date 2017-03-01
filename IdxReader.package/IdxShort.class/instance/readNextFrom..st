reading
readNextFrom: aReadStream 
	
	^ (aReadStream next: 2) shortAt: 1 bigEndian: true