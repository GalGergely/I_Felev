#include <stdio.h>

void p (int m)
{
	for(int i = 0; i < m; i++){
		for(int j = 0; j < m; j++){
			if(j < (m - i - 1)){
				printf(" ");

			}
			else {
				printf("X");
			}
		}
		printf("  ");
		for (int j = m; j > 0; j--){
			if(j > (m - i - 1)){
				printf("X");
			}
			else {
				printf(" ");
			}
		}
		printf("\n");
	}
}

int main() {
	int m;
	scanf("%d", &m);
	if(m > 1){
		p(m);
	}
}