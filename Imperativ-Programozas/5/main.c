#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include "rle.h"

int main(){
	char szoveg[5000];
    scanf("%s",szoveg);
        for(int i = 0;i<strlen(szoveg);i++)
        {
            if(!islower(szoveg[i]))
            {
                printf("Hibas bemenet!");
                return 0;
            }
        }

	encode(szoveg);
	printf(" -> ");
    decode(enc);
	return 0;
}
