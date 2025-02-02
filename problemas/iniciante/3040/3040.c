#include <stdio.h>

int main(void) {
  int n, altura, espessura, galhos;

  scanf("%d", &n);

  for (int i = 0; i < n; ++i) {
    scanf("%d %d %d", &altura, &espessura, &galhos);

    if (200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos) {
      printf("Sim\n");
    } else {
      printf("Nao\n");
    }
  }

  return 0;
}
