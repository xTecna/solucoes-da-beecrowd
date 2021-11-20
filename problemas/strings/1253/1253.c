#include <string.h>
#include <stdio.h>

int main(){
    char alfabeto[51];
    int N, deslocamento;

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%[^\n]\n", &alfabeto);
        scanf("%d\n", &deslocamento);

        for(int j = 0; j < strlen(alfabeto); ++j){
            alfabeto[j] = ((alfabeto[j] - 'A' - deslocamento + 26) % 26) + 'A';
        }

        printf("%s\n", alfabeto);
    }

    return 0;
}
