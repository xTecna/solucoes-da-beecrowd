#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int comp(const void* a, const void* b){
	return strcmp((char*)a,(char*)b);
}

int main(void) {
	int K, N, i;
	char alunos[200][50];
	
	scanf("%d %d\n", &N, &K);
	for(i = 0; i < N; ++i){
		scanf("%s", &alunos[i]);
	}
	
	qsort(alunos, N, sizeof(char) * 50, comp);
	
	printf("%s\n", alunos[K - 1]);
	
	return 0;
}
