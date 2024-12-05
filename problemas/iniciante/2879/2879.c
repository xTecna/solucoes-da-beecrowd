#include <stdio.h>

int main(void) {
  int n, x, vitorias;

  scanf("%d", &n);

  vitorias = 0;
  for (int i = 0; i < n; ++i) {
    scanf("%d", &x);
    if (x != 1) {
      vitorias += 1;
    }
  }

  printf("%d\n", vitorias);

  return 0;
}
