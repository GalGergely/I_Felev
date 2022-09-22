#include <stdio.h>
#include <string.h>
#include "rle.h"
void encode(char betuk[]){
	int kind=1;
	int db=1;


	for(int i=1; i<strlen(betuk); i++){
		if(betuk[i] != betuk[i-1]){
			kind++;
		}
	}
	enc.length=kind;
    int k = 0;
        if(betuk[0] != betuk[1])
        {
         enc.arr[0].c  = betuk[0];
         enc.arr[0].n = db;
        }
	for(int i=1; i<=strlen(betuk); i++){
		if(betuk[i]==betuk[i-1]){
			db++;
		}
		else{
            enc.arr[k].c = betuk[i - 1];
            enc.arr[k].n = db;
            db = 1;
            k++;
		}
	}

    for(int i = 0;i < k;i++)
    {
    printf("%d%c", enc.arr[i].n , enc.arr[i].c);
    }
}

void decode(Encoded enc)
{
    for(int i = 0;i<enc.length;i++)
    {
        for(int k = 0;k<enc.arr[i].n;k++)
        {
            printf("%c",enc.arr[i].c);
        }
    }


}
