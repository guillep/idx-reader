# Idx-reader
This package implements a reader for the IDX format written in Pharo.

Idx is a format designed to store vectors and multi dimensional matrixes. This format is used by the MNIST dataset of handwritten digits (http://yann.lecun.com/exdb/mnist/).

## Idx Format

The following description of the format is taken from the original website (http://yann.lecun.com/exdb/mnist/).

The IDX file format is a simple format for vectors and multidimensional matrices of various numerical types. The basic format is

```
header 
size in dimension 0 
size in dimension 1 
size in dimension 2 
..... 
size in dimension N 
data
```

The header (also called a magic number in the original description) is a big endian integer where.

- The first 2 bytes are always 0.
- The third byte codes the type of the data: 
  - 0x08: unsigned byte 
  - 0x09: signed byte 
  - 0x0B: short (2 bytes) 
  - 0x0C: int (4 bytes) 
  - 0x0D: float (4 bytes) 
  - 0x0E: double (8 bytes)
- The 4-th byte codes the number of dimensions of the vector/matrix: 1 for vectors, 2 for matrices....

The sizes in each dimension are 4-byte big endian integers.
The data is stored like in a C array, i.e. the index in the last dimension changes the fastest.

## Installation

Evaluate the following metacello expression to load it in your Pharo environment.

```smalltalk
Metacello new
  baseline: 'IdxReader';
  repository: 'github://guillep/idx-reader';
  load.
```

## Usage

An IdxReader works as a stream. You first create a reader on a binary file stream:

```smalltalk
reader := IdxReader onStream: (File named: 'path/to/your/idxfile') readStream.
```

And then you ask it for the next element:

```smalltalk
matrix := reader next.
```

The returned object is an array of arrays that depends on the file you're reading. For example, if your file contains a single dimensional data, then you will get an array with data. Likewise, if your file contains 2-dimensional data you will get an array of arrays with data.
