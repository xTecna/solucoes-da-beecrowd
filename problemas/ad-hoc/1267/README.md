# 1267 - Biblioteca Pascal

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1267)

## Solução

Uma maneira fácil de resolver este problema envolve guardar a quantidade de jantares em que todos os alunos participaram e no final verificar se alguém tem o número de jantares igual ao número total. Tal solução é viável porque sabemos que o limite de jantares e alunos é pequeno.

Outra possível solução envolveria assumir que todos os alunos participaram de todos os jantares e ir alterando o julgamento caso se prove que um aluno não foi a um determinado jantar. O principal problema com essa abordagem para esse problema específico é que pode-se economizar tempo se conseguirmos provar que nenhum aluno foi em todos, terminando o programa sem ler todas as entradas. Infelizmente, isso traz riscos, já que em uma mesma execução temos diversos casos de teste.

Mitigar esse risco é possível, mas só traria mais dificuldade na implementação. Neste caso, ficamos com a primeira ideia mesmo.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int jantares[101];
    int N, D, x, resposta;

    while(scanf("%d %d", &N, &D)){
        if(!N && !D)    break;

        memset(jantares, 0, sizeof(jantares));

        for(int i = 0; i < D; ++i){
            for(int j = 0; j < N; ++j){
                scanf("%d", &x);

                jantares[j] += x;
            }
        }

        resposta = 0;
        for(int i = 0; i < N; ++i){
            if(jantares[i] == D){
                resposta = 1;
                break;
            }
        }

        printf("%s\n", resposta ? "yes" : "no");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

int main(){
    int N, D, x;
    bool resposta;
    vector<int> jantares;

    while(cin >> N >> D){
        if(!N && !D)    break;

        resposta = false;
        jantares.assign(N, 0);

        for(int i = 0; i < D; ++i){
            for(int j = 0; j < N; ++j){
                cin >> x;

                jantares[j] += x;
            }
        }

        for(int i = 0; i < N; ++i){
            if(jantares[i] == D){
                resposta = true;
                break;
            }
        }

        cout << (string) (resposta ? "yes" : "no") << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [N, D] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let jantares = Array(N);
    jantares.fill(0);

    for(let i = 0; i < D; ++i){
        let participantes = lines.shift().trim().split(' ').map((x) => parseInt(x));
        
        for(let j = 0; j < N; ++j){
            jantares[j] += participantes[j];
        }
    }

    let resposta = jantares.some((x) => x === D);

    console.log(resposta ? 'yes' : 'no');
}
```

### Python 3.9
```python
while True:
    try:
        N, D = [int(x) for x in input().strip().split(' ')]

        if(not N and not D):
            break

        jantares = [0 for _ in range(N)]
        for i in range(D):
            participantes = [int(x) for x in input().strip().split(' ')]

            for j in range(N):
                jantares[j] += participantes[j]
        
        resposta = False
        for i in range(N):
            if(jantares[i] == D):
                resposta = True
                break
        
        print('yes' if resposta else 'no')
    except EOFError:
        break
```