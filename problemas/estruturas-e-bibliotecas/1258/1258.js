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
