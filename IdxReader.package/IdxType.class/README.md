The third byte of a IdxFile encodes the type of the encoded data:

0x08: unsigned byte
0x09: signed byte
0x0B: short (2 bytes)
0x0C: int (4 bytes)
0x0D: float (4 bytes)
0x0E: double (8 bytes)

My subclasses represent each of these data types and know how to read them. Check the concrete implementations of #readNextFrom: