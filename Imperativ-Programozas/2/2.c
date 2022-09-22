#include <stdio.h>
#include <stdlib.h>

int main()
{
    int c;
    int count=0;
	scanf("%d", &c);
	while(c!=1)
    {

        if(c%2==0)
        {
            c=c/2;
            printf("%d", c);
            printf(", ");
            count=count+1;
        }
        else
        {
            c=(c*3)+1;
            printf("%d", c);
            printf(", ");
            count=count+1;
        }

    }
        printf("\n");
        printf("A sorozat hossza: ""%d", count+1);



    return 0;
}3