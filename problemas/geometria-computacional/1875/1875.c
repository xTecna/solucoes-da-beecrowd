#include <stdio.h>

int main() {
  int C, P;
  char time1, time2;
  int regras[255][255];
  char times[3] = {'R', 'G', 'B'};

  regras['R']['G'] = 2;
  regras['R']['B'] = 1;
  regras['G']['R'] = 1;
  regras['G']['B'] = 2;
  regras['B']['R'] = 2;
  regras['B']['G'] = 1;

  scanf("%d\n", &C);
  for (int k = 0; k < C; ++k) {
    scanf("%d\n", &P);

    int pontos[255];
    pontos['R'] = 0;
    pontos['G'] = 0;
    pontos['B'] = 0;

    for (int i = 0; i < P; ++i) {
      scanf("%c %c\n", &time1, &time2);
      pontos[time1] += regras[time1][time2];
    }

    if (pontos['R'] == pontos['G'] && pontos['G'] == pontos['B']) {
      printf("trempate\n");
    } else if (pontos['R'] > pontos['G'] && pontos['R'] > pontos['B']) {
      printf("red\n");
    } else if (pontos['G'] > pontos['R'] && pontos['G'] > pontos['B']) {
      printf("green\n");
    } else if (pontos['B'] > pontos['R'] && pontos['B'] > pontos['G']) {
      printf("blue\n");
    } else {
      printf("empate\n");
    }
  }

  return 0;
}