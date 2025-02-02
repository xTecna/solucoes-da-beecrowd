#include <stdio.h>

int main(void) {
  int n, m, x, resposta, figurinhas[101];

  for (int i = 0; i < 101; ++i) {
    figurinhas[i] = 0;
  }

  scanf("%d", &n);
  scanf("%d", &m);

  resposta = n;
  for (int i = 0; i < m; ++i) {
    scanf("%d", &x);

    if (figurinhas[x] == 0) {
      resposta -= 1;
      figurinhas[x] = 1;
    }
  }

  printf("%d\n", resposta);

  return 0;
}
