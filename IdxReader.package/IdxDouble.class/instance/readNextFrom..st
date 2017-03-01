reading
readNextFrom: aReadStream 
	
	^ (aReadStream next: 8) doubleAt: 1 bigEndian: true