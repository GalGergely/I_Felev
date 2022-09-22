#ifndef RLE_H_
#define RLE_H_

typedef struct{
	char c;
	int n;
}Pair;

typedef struct{
	int length;
	Pair arr[255];
}Encoded;
	Encoded enc;
void encode(char[]);
void decode(Encoded);
#endif
