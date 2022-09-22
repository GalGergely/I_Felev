#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define INITCAP 8
#define BUFSIZE 1024

void write(char* lines[], int* size)
{
   int row=*size;
   for (int j=row; j>=0; j--)
    {
        printf("%d ", j + 1);
        for (int x=strlen(lines[j]); x>=0; x--)
        {
          printf("%c",lines[j][x]);
        }
        printf("\n");
    }
    for (int i=0; i<row; i++)
    {
        free(lines[i]);
    }
    free (lines);
}

char** read(FILE *fp, char* lines[], int* lSize)
{
    int ind=0;
    int columncount=0;
    int maxsize=INITCAP;
    char c;
    while (fscanf(fp,"%c", &c)!=EOF)
    {
        if (c!='\n')
        {
            lines[ind][columncount]=c;
            columncount++;  
        }
        else
        {
            lines[ind][columncount]='\0';
            columncount=0;
            ind++;
            if (ind==maxsize)
            {
                maxsize*=2;
                lines=(char**) realloc(lines, maxsize*sizeof(char*));
                for (int i=ind; i<maxsize; i++)
                {
                    lines[i]=(char *) malloc((BUFSIZE + 1)*sizeof(char));
                }
            }
        }     
    }
    *lSize = ind;
    return lines;
}

int main(int argc, char * argv[])
{
    //filecheck
    if (argc<2)
    {
        fprintf(stderr, "Not enough arguments");
        return 1;
    }
    if (argc>2)
    {
        fprintf(stderr, "Too many arguments");
        return 1;
    }
    FILE *fp=fopen(argv[1], "r");
    if (fp==NULL)
    {
        fprintf(stderr, "no such file or directory");
        return 1;
    }
    //task
    char** lines;
    lines=(char**) malloc(INITCAP * sizeof(char *));
    for (int i=0; i<INITCAP; i++)
    {
        lines[i]=(char *)malloc((BUFSIZE + 1) * sizeof(char));
    }
    int size=0;
    //read
    lines=read(fp,lines,&size);
    //write
    write(lines, &size);
    fclose(fp);
    return 0;
}