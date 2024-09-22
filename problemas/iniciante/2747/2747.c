#include <stdio.h>

int main() {
  char linha[50] = "---------------------------------------";

  printf("%s\n", linha);
  for (int i = 0; i < 5; ++i) {
    printf("|                                     |\n");
  }
  printf("%s\n", linha);

  return 0;
}