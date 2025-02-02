#include <stdio.h>

int main(void) {
  int n, x, y;

  scanf("%d %d %d", &n, &x, &y);
  printf("%.2f\n", (double)n / (x + y));

  return 0;
}
