#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    int n, maiuscula;
    char sentenca[51];

    while(gets(sentenca) != NULL){
        maiuscula = 1;
        n = strlen(sentenca);

        for(int i = 0; i < n; ++i){
            if(!isalpha(sentenca[i]))  continue;

            if(maiuscula)   sentenca[i] = toupper(sentenca[i]);
            else            sentenca[i] = tolower(sentenca[i]);
            maiuscula = 1 - maiuscula;
        }

        printf("%s\n", sentenca);
    }

    return 0;
}
