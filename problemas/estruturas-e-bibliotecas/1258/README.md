# 1258 - Camisetas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1258)

## Solução

Veja a seção de [critérios customizados](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#customização-de-critérios) para entender como customizar a ordenação que está presente em bibliotecas da sua linguagem de programação.

> Em Python, resolvi implementar um algoritmo de ordenação eficiente por não saber lidar com os critérios de ordenação tão específicos deste problema.

### C99
```c
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct Camiseta
{
    char nome[100], cor[10], tamanho[10];
};

int comp(const void *a, const void *b)
{
    struct Camiseta *cA = (struct Camiseta *)a;
    struct Camiseta *cB = (struct Camiseta *)b;

    if (strcmp(cA->cor, cB->cor) == 0)
    {
        if (strcmp(cA->tamanho, cB->tamanho) == 0)
        {
            return strcmp(cA->nome, cB->nome);
        }
        return -strcmp(cA->tamanho, cB->tamanho);
    }
    return strcmp(cA->cor, cB->cor);
}

int main()
{
    int N, first;
    struct Camiseta camisetas[60];

    first = 1;
    while (scanf("%d\n", &N))
    {
        if (!N)
            break;

        if (first)
            first = 0;
        else
            printf("\n");

        for (int i = 0; i < N; ++i)
        {
            scanf("%[^\n]\n", &(camisetas[i].nome));
            scanf("%s %s\n", &(camisetas[i].cor), &(camisetas[i].tamanho));
        }

        qsort(camisetas, N, sizeof(struct Camiseta), comp);

        for (int i = 0; i < N; ++i)
        {
            printf("%s %s %s\n", camisetas[i].cor, camisetas[i].tamanho, camisetas[i].nome);
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Camiseta
{
public:
    string nome, cor, tamanho;

    Camiseta()
    {
        nome = "";
        cor = "";
        tamanho = "";
    }

    Camiseta(string n, string c, string t)
    {
        nome = n;
        cor = c;
        tamanho = t;
    }
};

bool comp(Camiseta a, Camiseta b)
{
    if (a.cor == b.cor)
    {
        if (a.tamanho == b.tamanho)
        {
            return a.nome < b.nome;
        }
        return a.tamanho > b.tamanho;
    }
    return a.cor < b.cor;
}

int main()
{
    int N;
    bool first;
    vector<Camiseta> camisetas;

    first = true;
    while (cin >> N)
    {
        if (!N)
            break;
        cin.ignore();

        if (first)
            first = false;
        else
            cout << endl;

        camisetas.assign(N, Camiseta());
        for (int i = 0; i < N; ++i)
        {
            getline(cin, camisetas[i].nome);
            cin >> camisetas[i].cor >> camisetas[i].tamanho;
            cin.ignore();
        }

        sort(camisetas.begin(), camisetas.end(), comp);

        for (int i = 0; i < N; ++i)
        {
            cout << camisetas[i].cor << " " << camisetas[i].tamanho << " " << camisetas[i].nome << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

class Camiseta{
    constructor(n, c, t){
        this.nome = n;
        this.cor = c;
        this.tamanho = t;
    }
}

const comp = (a, b) => {
    if(a.cor === b.cor){
        if(a.tamanho === b.tamanho){
            if(a.nome < b.nome) return -1;
            if(a.nome > b.nome) return 1;
            return 0;
        }
        if(a.tamanho > b.tamanho)   return -1;
        return 1;
    }
    if(a.cor < b.cor)   return -1;
    return 1;
};

let first = true;
while(lines.length){
    let N = parseInt(lines.shift());

    if(first)
        first = false;
    else
        console.log("");

    let camisetas = [];
    for(let i = 0; i < N; ++i){
        let nome = lines.shift().trim();
        let [cor, tamanho] = lines.shift().trim().split(' ');

        camisetas.push(new Camiseta(nome, cor, tamanho));
    }

    camisetas.sort(comp);

    for(let i = 0; i < N; ++i){
        console.log(`${camisetas[i].cor} ${camisetas[i].tamanho} ${camisetas[i].nome}`);
    }
}#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Camiseta
{
public:
    string nome, cor, tamanho;

    Camiseta()
    {
        nome = "";
        cor = "";
        tamanho = "";
    }

    Camiseta(string n, string c, string t)
    {
        nome = n;
        cor = c;
        tamanho = t;
    }
};

bool comp(Camiseta a, Camiseta b)
{
    if (a.cor == b.cor)
    {
        if (a.tamanho == b.tamanho)
        {
            return a.nome < b.nome;
        }
        return a.tamanho > b.tamanho;
    }
    return a.cor < b.cor;
}

int main()
{
    int N;
    bool first;
    vector<Camiseta> camisetas;

    first = true;
    while (cin >> N)
    {
        if (!N)
            break;
        cin.ignore();

        if (first)
            first = false;
        else
            cout << endl;

        camisetas.assign(N, Camiseta());
        for (int i = 0; i < N; ++i)
        {
            getline(cin, camisetas[i].nome);
            cin >> camisetas[i].cor >> camisetas[i].tamanho;
            cin.ignore();
        }

        sort(camisetas.begin(), camisetas.end(), comp);

        for (int i = 0; i < N; ++i)
        {
            cout << camisetas[i].cor << " " << camisetas[i].tamanho << " " << camisetas[i].nome << endl;
        }
    }

    return 0;
}#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Camiseta
{
public:
    string nome, cor, tamanho;

    Camiseta()
    {
        nome = "";
        cor = "";
        tamanho = "";
    }

    Camiseta(string n, string c, string t)
    {
        nome = n;
        cor = c;
        tamanho = t;
    }
};

bool comp(Camiseta a, Camiseta b)
{
    if (a.cor == b.cor)
    {
        if (a.tamanho == b.tamanho)
        {
            return a.nome < b.nome;
        }
        return a.tamanho > b.tamanho;
    }
    return a.cor < b.cor;
}

int main()
{
    int N;
    bool first;
    vector<Camiseta> camisetas;

    first = true;
    while (cin >> N)
    {
        if (!N)
            break;
        cin.ignore();

        if (first)
            first = false;
        else
            cout << endl;

        camisetas.assign(N, Camiseta());
        for (int i = 0; i < N; ++i)
        {
            getline(cin, camisetas[i].nome);
            cin >> camisetas[i].cor >> camisetas[i].tamanho;
            cin.ignore();
        }

        sort(camisetas.begin(), camisetas.end(), comp);

        for (int i = 0; i < N; ++i)
        {
            cout << camisetas[i].cor << " " << camisetas[i].tamanho << " " << camisetas[i].nome << endl;
        }
    }

    return 0;
}#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct Camiseta
{
    char nome[100], cor[10], tamanho[10];
};

int comp(const void *a, const void *b)
{
    struct Camiseta *cA = (struct Camiseta *)a;
    struct Camiseta *cB = (struct Camiseta *)b;

    if (strcmp(cA->cor, cB->cor) == 0)
    {
        if (strcmp(cA->tamanho, cB->tamanho) == 0)
        {
            return strcmp(cA->nome, cB->nome);
        }
        return -strcmp(cA->tamanho, cB->tamanho);
    }
    return strcmp(cA->cor, cB->cor);
}

int main()
{
    int N, first;
    struct Camiseta camisetas[60];

    first = 1;
    while (scanf("%d\n", &N))
    {
        if (!N)
            break;

        if (first)
            first = 0;
        else
            printf("\n");

        for (int i = 0; i < N; ++i)
        {
            scanf("%[^\n]\n", &(camisetas[i].nome));
            scanf("%s %s\n", &(camisetas[i].cor), &(camisetas[i].tamanho));
        }

        qsort(camisetas, N, sizeof(struct Camiseta), comp);

        for (int i = 0; i < N; ++i)
        {
            printf("%s %s %s\n", camisetas[i].cor, camisetas[i].tamanho, camisetas[i].nome);
        }
    }

    return 0;
}#include <stdlib.h>
#include <string.h>
#include <stdio.h>

struct Camiseta
{
    char nome[100], cor[10], tamanho[10];
};

int comp(const void *a, const void *b)
{
    struct Camiseta *cA = (struct Camiseta *)a;
    struct Camiseta *cB = (struct Camiseta *)b;

    if (strcmp(cA->cor, cB->cor) == 0)
    {
        if (strcmp(cA->tamanho, cB->tamanho) == 0)
        {
            return strcmp(cA->nome, cB->nome);
        }
        return -strcmp(cA->tamanho, cB->tamanho);
    }
    return strcmp(cA->cor, cB->cor);
}

int main()
{
    int N, first;
    struct Camiseta camisetas[60];

    first = 1;
    while (scanf("%d\n", &N))
    {
        if (!N)
            break;

        if (first)
            first = 0;
        else
            printf("\n");

        for (int i = 0; i < N; ++i)
        {
            scanf("%[^\n]\n", &(camisetas[i].nome));
            scanf("%s %s\n", &(camisetas[i].cor), &(camisetas[i].tamanho));
        }

        qsort(camisetas, N, sizeof(struct Camiseta), comp);

        for (int i = 0; i < N; ++i)
        {
            printf("%s %s %s\n", camisetas[i].cor, camisetas[i].tamanho, camisetas[i].nome);
        }
    }

    return 0;
}
```

### Python 3.9
```python
class Camiseta:
    def __init__(self, n, c, t):
        self.nome = n
        self.cor = c
        self.tamanho = t


def comp(a, b):
    if(a.cor == b.cor):
        if(a.tamanho == b.tamanho):
            if(a.nome < b.nome):
                return -1
            if(a.nome > b.nome):
                return 1
            return 0
        if(a.tamanho > b.tamanho):
            return -1
        return 1
    if(a.cor < b.cor):
        return -1
    return 1


def particao(V, inicio, fim):
    pivo = V[fim - 1]
    i = inicio
    for j in range(inicio, fim):
        if(comp(V[j], pivo) < 0):
            V[j], V[i] = V[i], V[j]
            i += 1

    if(comp(pivo, V[i]) < 0):
        V[fim - 1], V[i] = V[i], V[fim - 1]

    return i


def quickSort(V, inicio, fim):
    if(fim > inicio):
        posicaoPivo = particao(V, inicio, fim)
        quickSort(V, inicio, posicaoPivo)
        quickSort(V, posicaoPivo + 1, fim)


first = True
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        if(first):
            first = False
        else:
            print('')

        camisetas = []
        for _ in range(N):
            nome = input()
            cor, tamanho = input().strip().split(' ')

            camisetas.append(Camiseta(nome, cor, tamanho))

        quickSort(camisetas, 0, len(camisetas))

        for camiseta in camisetas:
            print(f'{camiseta.cor} {camiseta.tamanho} {camiseta.nome}')
    except EOFError:
        break

```