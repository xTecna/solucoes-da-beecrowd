#include <math.h>
#include <stdio.h>

double dist(int x1, int y1, int x2, int y2) {
  return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

int main() {
  int L, C, r1, r2;

  while (1) {
    scanf("%d %d %d %d\n", &L, &C, &r1, &r2);
    if (L == 0 && C == 0 && r1 == 0 && r2 == 0) {
      break;
    }

    int x1 = r1;
    int y1 = r1;
    int x2 = L - r2;
    int y2 = C - r2;

    int distancia = dist(x1, y1, x2, y2);
    if (L < 2 * r1 || C < 2 * r1 || L < 2 * r2 || C < 2 * r2 ||
        distancia < r1 + r2) {
      printf("N\n");
    } else {
      printf("S\n");
    }
  }

  return 0;
}