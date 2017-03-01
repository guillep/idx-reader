reading
readNextFrom: aReadStream 
	
	| byte |
	byte := aReadStream next.
	"decode negative 32-bit integer"
	byte >= 128 ifTrue: [ byte := -256 + byte ].
	^ byte