#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b){
    return *((int*)b) - *((int*)a);
}

int main(void) {
	int N;
	int suspeitos[1000];

    while(scanf("%d", &N)){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            scanf("%d", &suspeitos[i]);
            suspeitos[i] = (suspeitos[i] * 1000) + i;
        }

        qsort(suspeitos, N, sizeof(int), comp);

        printf("%d\n", (suspeitos[1] % 1000) + 1);
    }
	
	return 0;
}
