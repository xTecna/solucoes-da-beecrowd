#include <stdio.h>
#include <ctype.h>

int main()
{
    int T;
    char senha[20];
    int possibilidades[300];
    
    for(char i = 'a'; i <= 'z'; ++i){
        possibilidades[i] = 2;
    }
    possibilidades['a'] = 3;
    possibilidades['e'] = 3;
    possibilidades['i'] = 3;
    possibilidades['o'] = 3;
    possibilidades['s'] = 3;
    
    scanf("%d\n", &T);
    for(int i = 0; i < T; ++i)
    {
        scanf("%s\n", &senha);
        
        int resposta = 1;
        for(int j = 0; j < strlen(senha); ++j)
        {
            resposta *= possibilidades[tolower(senha[j])];
        }
        
        printf("%d\n", resposta);
    }

    return 0;
}
