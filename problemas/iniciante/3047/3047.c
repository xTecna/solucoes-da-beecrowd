#include <stdio.h>

int max(int a, int b) { return a > b ? a : b; }

int main(void) {
  int m, a, b;

  scanf("%d", &m);
  scanf("%d", &a);
  scanf("%d", &b);

  int c = m - a - b;

  printf("%d\n", max(a, max(b, c)));

  return 0;
}
