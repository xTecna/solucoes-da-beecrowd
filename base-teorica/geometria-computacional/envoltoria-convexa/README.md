# Envoltória convexa

## Motivação

O algoritmo de envoltória convexa serve para descobrir, em um determinado conjunto de pontos, qual é o conjunto de pontos que formam um polígono onde todos os pontos ou estão dentro ou sobre o polígono.

![Fonte: Wikipedia](https://upload.wikimedia.org/wikipedia/commons/d/de/ConvexHull.svg)

Pensando em uma analogia da vida real, podemos imaginar que um elástico está esticado em volta dos pontos. Se soltarmos o elástico, em quais pontos ele vai se apoiar?

## Algoritmo

O algoritmo recebe uma lista de pontos $P$ com $3$ ou mais pontos e retorna uma lista de pontos com elementos da lista $P$ que fazem parte da envoltória. Para a prepação do algoritmo, primeiramente ordena-se $P$ pela coordenada $x$ (e se empatado, pela coordenada $y$) e adiciona o primeiro ponto à lista da resposta, já que sendo esse o elemento mais à esquerda e abaixo ele certamente está na envoltória.

Com isso, vamos chamar o elemento que acabou de ser inserido na resposta de $p$. Toda vez que um elemento é inserido na resposta:
1. O próximo ponto na lista após $p$, que chamaremos de $q$, é definido como o próximo candidato a ser inserido na lista.
2. A partir de $q$, queremos avaliar se $q$ está no sentido horário em relação aos outros pontos da lista (que chamaremos de $i$, sendo $i$ qualquer elemento que não seja nem $p$ nem $q$). A intenção aqui é fazer algo parecido com o movimento do elástico, começando com ele encostado no $p$ e tentando fechar o cerco no próximo ponto, que a princípio seria o $q$.
    1. Para avaliar isso, podemos começar criando dois vetores: $pi$ e $pq$.
    2. Após isso, podemos fazer o produto vetorial desses dois vetores e pegarmos a magnitude do vetor resultante (no código, já fiz o cálculo da magnitude direto).
    3. Se a magnitude do produto vetorial dos vetores der
        1. **positiva**, isso significa que o vetor $pi$ está no sentido anti-horário ao do vetor $pq$, o que significa que o ponto $i$ seria atingido pelo elástico antes do ponto $q$, o que faz com que $i$ seja agora o novo candidato.
        2. **zero**, isso significa que os pontos são colineares, o que faz com que $q$ ainda seja o candidato da vez.
        3. **negativa**, isso significa que o vetor $pi$ está no sentido horário ao do vetor $pq$, o que significa que o ponto $q$ seria atingido pelo elástico antes do ponto $i$, ou seja, a avaliação continua.
3. Terminadas todas as avaliações com todos os outros pontos, adicionamos o ponto candidato à lista de resposta. O _loop_ continua até que o candidato a ser adicionado seja o primeiro ponto da lista, ou seja, voltou ao primeiro ponto. Nesse caso, o ponto não será adicionado e o algoritmo é encerrado.

## Implementação

### C++
```cpp
#include <algorithm>
#include <vector>

class Ponto {
public:
  int x, y;
};

bool comp(Ponto a, Ponto b) {
  if (a.x == b.x)
    return a.y < b.y;
  return a.x < b.x;
}

class Vetor {
public:
  int x, y;

  Vetor(Ponto a, Ponto b) {
    this->x = b.x - a.x;
    this->y = b.y - a.y;
  }
};

double produto(Vetor a, Vetor b) { return a.x * b.y - a.y * b.x; }

bool antiHorario(Ponto p, Ponto q, Ponto r) {
  return produto(Vetor(p, q), Vetor(p, r)) > 0.0;
}

vector<Ponto> contornoConvexo(const vector<Ponto> &pontos) {
  // Presume-se que pontos ja estao ordenados
  vector<Ponto> resultado;

  int n = pontos.size();
  if (n < 3)
    return resultado;

  int p = 0, q;

  do {
    resultado.push_back(pontos[p]);

    q = (p + 1) % n;
    for (int i = 0; i < n; ++i) {
      if (antiHorario(pontos[p], pontos[i], pontos[q])) {
        q = i;
      }
    }

    p = q;
  } while (p != 0);

  return resultado;
}
```

## Problemas

* [1464 - Camadas de Cebola](../../../problemas/geometria-computacional/1464/README.md)
* [1982 - Novos Computadores](../../../problemas/geometria-computacional/1982/README.md)