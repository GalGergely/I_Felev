#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int isalpha(int argument);
int isValidToDo(char lista[]){
for(int i=0; (unsigned)i<strlen(lista); i++){
        if(!isalpha(lista[i])){
         return 0;
        }
    }
return 1;
}
int isValidTime(char ido[]){
    if(ido[0]<'0' || ido[0]>'2'){
        return 0;
    }
    if(ido[1]>'9' || ido[1]<'0'){
        return 0;
    }
    if(ido[2]!=':'){
        return 0;
    }
    if(ido[3]<'0' || ido[3]>'5'){
        return 0;
    }
    if(ido[4]>'9' || ido[4]<'0'){
        return 0;
    }
    if(ido[5]!='\0' ){
        return 0;
    }
    if(ido[0]=='2' && ido[1]>'3'){
        return 0;
    }
    return 1;
}
int main(int db, char *a[])
{
   FILE *kimenet;
   kimenet = fopen("todolist.txt", "w");
   for(int i=1; i<db; i++){
        if(isValidTime(a[i]) && isValidToDo(a[i+1])){
            fprintf(kimenet,"%s - %s\n",a[i],a[i+1]);
        }
        else{
            printf("Hibás bemenet!");
        }
    i++;
   }
 if(db<3){
   printf("Hibás bemenet!");
   }
    fclose(kimenet);
    return 0;
}