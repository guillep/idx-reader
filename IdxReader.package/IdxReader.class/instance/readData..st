reading
readData: anInteger 
	
	^ (1 to: anInteger) collect: [ :index | self readNextItem ]