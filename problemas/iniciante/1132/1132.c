#include <math.h>
#include <stdio.h>

int somaPA(int a1, int an, int n) { return ((a1 + an) * n) / 2; }

int main() {
  int X, Y;

  scanf("%d", &X);
  scanf("%d", &Y);

  if (X > Y) {
    int temp = X;
    X = Y;
    Y = temp;
  }

  int a1 = 13 * ceil(X / 13.0);
  int an = 13 * floor(Y / 13.0);
  int n = ((an - a1) / 13) + 1;

  int tudo = somaPA(X, Y, Y - X + 1);
  int multiplos = somaPA(a1, an, n);

  printf("%d\n", tudo - multiplos);

  return 0;
}