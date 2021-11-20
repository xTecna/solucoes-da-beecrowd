# 1430 - Composição de Jingles

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1430)

## Solução

Para contar a duração de cada compasso, acumula-se uma variável com a soma das durações em `double` até encontrar uma barra, onde pode-se avaliar se tal valor acumulado é igual a 1 e contabilizar para a resposta caso seja.

### C99
```c
#include <string.h>
#include <stdio.h>

double duracaoNota(char nota)
{
    switch (nota)
    {
    case 'W':
        return 1.0;
    case 'H':
        return 0.5;
    case 'Q':
        return 0.25;
    case 'E':
        return 0.125;
    case 'S':
        return 0.0625;
    case 'T':
        return 0.03125;
    case 'X':
        return 0.015625;
    }
}

int main()
{
    int resposta;
    double duracao;
    char composicao[1000];

    while (scanf("%[^\n]\n", &composicao) != EOF)
    {
        if (strcmp(composicao, "*") == 0)
            break;

        resposta = 0;
        duracao = 0.0;
        for (int i = 0; i < strlen(composicao); ++i)
        {
            if (composicao[i] == '/')
            {
                if (duracao == 1.0)
                    ++resposta;
                duracao = 0.0;
            }
            else
            {
                duracao += duracaoNota(composicao[i]);
            }
        }

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

double duracaoNota(char nota)
{
    switch (nota)
    {
    case 'W':
        return 1.0;
    case 'H':
        return 0.5;
    case 'Q':
        return 0.25;
    case 'E':
        return 0.125;
    case 'S':
        return 0.0625;
    case 'T':
        return 0.03125;
    case 'X':
        return 0.015625;
    }
}

int main()
{
    int resposta;
    double duracao;
    string composicao;

    while (cin >> composicao)
    {
        if (composicao == "*")
            break;

        resposta = 0;
        duracao = 0.0;
        for (int i = 0; i < composicao.length(); ++i)
        {
            if (composicao[i] == '/')
            {
                if (duracao == 1.0)
                    ++resposta;
                duracao = 0.0;
            }
            else
            {
                duracao += duracaoNota(composicao[i]);
            }
        }

        cout << resposta << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

lines.pop();

const duracaoNota = (nota) => {
    switch(nota){
        case 'W':   return 1.0;
        case 'H':   return 0.5;
        case 'Q':   return 0.25;
        case 'E':   return 0.125;
        case 'S':   return 0.0625;
        case 'T':   return 0.03125;
        case 'X':   return 0.015625;
    }
}

while(lines.length){
    let compassos = lines.shift().trim().split('/');
    compassos.pop();
    compassos.shift();

    let duracoes = compassos.map((compasso) => compasso.split('').reduce((acc, cur) => acc + duracaoNota(cur), 0));
    let resposta = duracoes.filter((duracao) => duracao === 1.0);

    console.log(resposta.length);
}
```

### Python 3.9
```python
duracaoNota = {'W': 1.0, 'H': 0.5, 'Q': 0.25, 'E': 0.125,
               'S': 0.0625, 'T': 0.03125, 'X': 0.015625}

while True:
    try:
        compasso = input()

        if(compasso == '*'):
            break

        compassos = compasso.strip().split('/')[1:-1]

        resposta = 0
        for c in compassos:
            duracao = 0.0
            for nota in c:
                duracao += duracaoNota[nota]
            if(duracao == 1.0):
                resposta += 1

        print(resposta)
    except EOFError:
        break
```