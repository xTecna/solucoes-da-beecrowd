#include <stdio.h>
#include <stdlib.h>

int main(void) {
  int C;
  char frase[100];

  scanf("%d\n", &C);
  for (int k = 0; k < C; ++k) {
      scanf("%[^\n]\n", &frase);
      printf("gzuz\n");
  }

  return 0;
}