instance-creation
onStream: aReadStream 
	
	^ self new
		readStream: aReadStream;
		setUp;
		yourself