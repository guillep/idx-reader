reading
readDimensionSize: anInteger rest: aCollection 
	
	^ aCollection
		ifEmpty: [ self readData: anInteger ]
		ifNotEmpty: [ 
			(1 to: anInteger) collect: [ :index |
				self readDimensionSize: aCollection first rest: aCollection allButFirst.
			] ]