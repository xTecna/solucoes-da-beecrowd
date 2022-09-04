#include <string.h>
#include <stdio.h>

int main()
{
    char tweet[501];

    gets(tweet);
    printf("%s\n", strlen(tweet) > 140 ? "MUTE" : "TWEET");

    return 0;
}