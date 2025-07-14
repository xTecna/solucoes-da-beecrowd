#include <math.h>
#include <stdio.h>

int main(void) {
  double F;

  while (scanf("%lf", &F) != EOF) {
    double lado = F * sin(108 * 3.14159265358979323846 / 180) /
                  sin(63 * 3.14159265358979323846 / 180);
    printf("%.10lf\n", lado);
  }

  return 0;
}
