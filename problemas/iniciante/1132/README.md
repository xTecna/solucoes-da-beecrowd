# 1132 - Múltiplos de 13

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1132)

## Solução

Para essa solução, o jeito mais simples é fazer um `for` que vai do menor ou maior elemento contando apenas os números que não são múltiplos de 13.

Também dá pra usar uma fórmula fechada considerando a diferença entre a soma de uma progressão aritmética de todos os números entre $X$ e $Y$ e a soma de uma progressão aritmética de todos os múltiplos de $13$ entre $X$ e $Y$ (que comecaria no primeiro múltiplo maior que $X$, terminaria no último multiplo menor que $Y$ e teria razão $13$). Vou deixar um exemplo desse código abaixo em $C$, mas a forma apresentada nos outros códigos é mais simples de entender (embora menos eficiente):

```c
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
```