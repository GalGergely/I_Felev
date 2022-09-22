#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
int isalpha(int argument);
size_t max_size = 10; // az adatbázis max mérete
size_t i = 0; // az éppen tárolt person-ok száma
struct Person* iterator;

struct Person
{
    char name[30];
    unsigned age;
    char job[30];
};
bool nameCheck(char name[30])
{
    if(strlen(name) > 30)
    {
        printf("The name is too long.\n");
        return false;
    }
    for(int i = 0; i<strlen(name);i++)
    {
        if(!isalpha(name[i]) && name[i] != ' ')
        {
            printf("Name should only contain non-accented letters.˛\n");
            return false;
        }
    }
    return true;
}
void add()
{
	if(i+1 == max_size)
    {
		max_size += 5;
		iterator = realloc(iterator, max_size * sizeof(struct Person));
	}
            char name[200];
            printf("Enter name: ");
            fflush(stdin);
            gets(name);
            if(nameCheck(name))
	        {
            strcpy(iterator[i].name, name);
            printf("Enter age: ");
            fflush(stdin);
            scanf("%u", &(iterator[i].age));
            printf("Enter job: ");
            fflush(stdin);
            scanf("%s", iterator[i].job);
            ++i;
            }
           

}
void list()
{
            for (size_t idx = 0; idx < i; idx++)
            {
                printf("i = %zu\nname: %s, age: %u, job: %s\n\n", idx, iterator[idx].name, iterator[idx].age, iterator[idx].job);
            }	
}
void ex()
{
	free(iterator);
	exit(0);
}


int main()
{
    
    iterator = malloc(max_size * sizeof(struct Person));
    // if (iterator == NULL) ...

    char ch;
    while (1)
    {
        printf("menu: ");
        scanf(" %c", &ch);
        if (ch == 'a')
        {
            add();
        }
        else if (ch == 'l')
        {
            list();
        }
        else if (ch == 'x')
        {
            ex();
        }
    }

    return 0;
}