# 1203 - Pontes de São Petersburgo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1203)

## Solução

Recebemos a descrição de uma cidade, que possui R regiões e K pontes que ligam determinadas regiões e gostaríamos de saber se é possível selecionar um certo grupo de regiões tal que o número de pontes total seja K, contando duplicatas. Essas duas últimas palavras são importantes, pois caso não contássemos, a solução seria trivial, se escolhêssemos todas as regiões, teríamos K pontes entre todo o mundo. Mas o que quer dizer contar duplicatas nesse contexto? Significa que, se escolhermos as regiões A e B e elas compartilharem uma ponte, essa ponte na verdade vai ser contada duas vezes, uma pela escolha de A e outra pela escolha de B.

Com isso, é preciso pensarmos em qual abordagem podemos implementar para a escolha das regiões corretamente de forma a termos K pontes entre elas. Note que, para cada região, temos uma escolha: incluí-la ou não no grupo de regiões que compartilham K pontes entre si. Com isso, temos um problema que pode ser interpretado da seguinte forma: para uma região i onde eu já tenho x pontes, vale a pena eu incluir minha região, trazendo minhas pontes adjacentes às x pontes já existentes na solução, ou não vale a pena?

Isso é basicamente o princípio da programação dinâmica, onde tentamos compor nossa solução através de soluções anteriores. Com isso, teremos uma recorrência da seguinte forma:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
T(região,&space;pontes)&space;=&space;T(próxima,&space;pontes)&space;\lor&space;T(próxima,&space;pontes&space;+&space;grau(região))" title="\bg_white 
T(região, pontes) = T(próxima, pontes) \lor T(próxima, pontes + grau(região))" />

onde próxima se refere à próxima região e grau(região) ao número de pontes que incidem na região que estamos olhando. Basicamente, nossa recorrência nos diz que é possível ter um grupo de regiões onde o número de pontes é igual a K se só seguirmos para a próxima região sem acrescentar pontes (caso onde a região não é escolhida) ou se seguirmos para a próxima região acrescentando nossa quantidade de pontes (caso em que a região é escolhida). Temos também nossos casos base:

* Se a variável `pontes` for igual a K, retornar **verdadeiro**.
* Se a variável `pontes` for maior que K, retornar **falso**.
* Se a região for inválida, retornar **falso**. Esse caso vai se tornar mais claro no código.

Logo, tudo o que resta é saber se nosso espaço de busca é pequeno o bastante para conseguirmos fazer a memorização da nossa programação dinâmica (na verdade, a gente deveria ter feito isso no começo). São 100 regiões no máximo com no máximo 4950 pontes, o que dá para armazenar em uma matriz, então tudo certo. Então agora podemos seguir com o código, apenas lembrando que a chamada externa é T(1, 0) (começando na região 1 com, por enquanto, 0 pontes na solução).

> Repare que não foi necessário implementar o grafo na nossa solução, apenas o número de graus de cada vértice (o número de pontes em cada região).

### C99
```c
#include <stdio.h>
#include <string.h>

int R, K;
int graus[101];
int resposta[101][4951];

int DP(int regiao, int pontes){
    if(regiao > R)  return 0;

    if(resposta[regiao][pontes] == -1){
        if(pontes == K){
            resposta[regiao][pontes] = 1;
        }else if(pontes > K){
            resposta[regiao][pontes] = 0;
        }else{
            resposta[regiao][pontes] = DP(regiao + 1, pontes) ||
                                       DP(regiao + 1, pontes + graus[regiao]);
        }
    }
    
    return resposta[regiao][pontes];
}

int main(){
    int A, B;

    while(scanf("%d %d", &R, &K) != EOF){
        memset(graus, 0, sizeof(graus));
        memset(resposta, -1, sizeof(resposta));

        for(int i = 0; i < K; ++i){
            scanf("%d %d", &A, &B);

            ++graus[A];
            ++graus[B];
        }

        printf("%c\n", DP(1, 0) ? 'S' : 'N');
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cstring>

using namespace std;

int R, K;
int graus[101];
int resposta[101][4951];

int DP(int regiao, int pontes){
    if(regiao > R)  return 0;

    if(resposta[regiao][pontes] == -1){
        if(pontes == K){
            resposta[regiao][pontes] = 1;
        }else if(pontes > K){
            resposta[regiao][pontes] = 0;
        }else{
            resposta[regiao][pontes] = DP(regiao + 1, pontes) ||
                                       DP(regiao + 1, pontes + graus[regiao]);
        }
    }

    return resposta[regiao][pontes];
}

int main(){
    int A, B;

    while(cin >> R >> K){
        memset(graus, 0, sizeof(graus));
        memset(resposta, -1, sizeof(resposta));

        for(int i = 0; i < K; ++i){
            cin >> A >> B;
            ++graus[A];
            ++graus[B];
        }

        cout << (char) (DP(1, 0) ? 'S' : 'N') << endl;
    }

    return 0;
}
```