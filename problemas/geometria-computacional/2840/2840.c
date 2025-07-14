#include <stdio.h>

int main() {
  int R, L;
  double pi = 3.1415;

  scanf("%d %d", &R, &L);

  double V = (4.0 * pi * R * R * R) / 3.0;
  printf("%d\n", (int)(L / V));

  return 0;
}