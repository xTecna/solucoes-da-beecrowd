# Flood Fill

## Motivação

O algoritmo _Flood Fill_ ("preenchimento por inundação" em Português) é um algoritmo recursivo bastante usado para buscas em _grides_ de maneira espacial, isso é, podendo andar no grid em determinadas direções a fim de alcançar um dado objetivo. Seu funcionamento lembra muito o balde de tinta de programas como o _Paint_, com a ideia de preencher todos os espaços possíveis. Veja o _GIF_ a seguir para entender visualmente como que funciona o algoritmo:

![O algoritmo Flood Fill começando a partir do ponto central e preenchendo o grid respeitando as paredes. (Fonte: Wikipedia)](https://upload.wikimedia.org/wikipedia/commons/7/7e/Recursive_Flood_Fill_4_%28aka%29.gif)

## Implementações

A ideia do Flood Fill funciona do seguinte modo, começando a partir de uma posição inicial pré-determinada:

1. Verifica o que há nessa posição e marca a posição como visitada;
2. Confere se os vizinhos não foram visitados ainda;
    1. Para cada vizinho não visitado, executa _Flood Fill_ no vizinho.

Isso tem várias aplicações práticas, desde ver quantos espaços podem ser visitados a partir de uma determinada posição como também para ver quantos espaços fechados há em um _grid_. Também pode ser usado em mapas para ver quantos recursos é possível capturar dado uma determinada configuração.

Os exemplos abaixo assumem que só se pode andar para cima, baixo, esquerda e direita, mas é possível também adaptar para também se mover pelas diagonais ou por qualquer outro tipo de movimento (como, por exemplo, pelo modo que um cavalo se movimenta no xadrez).

### C#
```cs
static bool haCaminho(char[,] grid, bool[,] visitado, int x, int y)
{
    // outras condições podem ser colocadas aqui dependendo de quais valores são considerados acessíveis ou não
    return !visitado[x, y];
}

static int FloodFill(char[,] grid, bool[,] visitado, int x, int y)
{
    visitado[x, y] = true;

    int resposta = 0;
    // aqui você pode acrescentar alguma condição na posição atual que pode aumentar o valor resposta

    if (haCaminho(grid, visitado, x + 1, y))
    {
        resposta += FloodFill(grid, visitado, x + 1, y);
    }
    if (haCaminho(grid, visitado, x - 1, y))
    {
        resposta += FloodFill(grid, visitado, x - 1, y);
    }
    if (haCaminho(grid, visitado, x, y + 1))
    {
        resposta += FloodFill(grid, visitado, x, y + 1);
    }
    if (haCaminho(grid, visitado, x, y - 1))
    {
        resposta += FloodFill(grid, visitado, x, y - 1);
    }

    return resposta;
}
```

### C++20
```cpp
bool haCaminho(char **grid, bool **visitado, int x, int y) {
  // outras condições podem ser colocadas aqui dependendo de quais valores são considerados acessíveis ou não
  return !visitado[x][y];
}

int FloodFill(char **grid, bool **visitado, int x, int y) {
  visitado[x][y] = true;

  int resposta = 0;
  // aqui você pode acrescentar alguma condição na posição atual que pode aumentar o valor resposta

  if (haCaminho(grid, visitado, x + 1, y)) {
    resposta += FloodFill(grid, visitado, x + 1, y);
  }
  if (haCaminho(grid, visitado, x - 1, y)) {
    resposta += FloodFill(grid, visitado, x - 1, y);
  }
  if (haCaminho(grid, visitado, x, y + 1)) {
    resposta += FloodFill(grid, visitado, x, y + 1);
  }
  if (haCaminho(grid, visitado, x, y - 1)) {
    resposta += FloodFill(grid, visitado, x, y - 1);
  }

  return resposta;
}
```

### C99
```c
int haCaminho(char **grid, int **visitado, int x, int y) {
  // outras condições podem ser colocadas aqui dependendo de quais valores são considerados acessíveis ou não
  return !visitado[x][y];
}

int FloodFill(char **grid, int **visitado, int x, int y) {
  visitado[x][y] = 1;

  int resposta = 0;
  // aqui você pode acrescentar alguma condição na posição atual que pode aumentar o valor resposta

  if (haCaminho(grid, visitado, x + 1, y)) {
    resposta += FloodFill(grid, visitado, x + 1, y);
  }
  if (haCaminho(grid, visitado, x - 1, y)) {
    resposta += FloodFill(grid, visitado, x - 1, y);
  }
  if (haCaminho(grid, visitado, x, y + 1)) {
    resposta += FloodFill(grid, visitado, x, y + 1);
  }
  if (haCaminho(grid, visitado, x, y - 1)) {
    resposta += FloodFill(grid, visitado, x, y - 1);
  }

  return resposta;
}
```

## Problemas