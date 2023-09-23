# 1256 - Tabelas Hash

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1256)

## Solução

Este problema explica de forma bem básica como funcionam as tabelas _hash_, tabelas que armazenam informações baseada em chaves, ou seja, o próprio elemento a ser inserido é convertido para decidir sua posição no vetor. Este tipo de estrutura de dados serve a um propósito de facilitar a busca de elementos, pois quanto menos colisão existir na fórmula _hash_, menos elementos precisamos percorrer para encontrarmos o que procuramos (ao invés de termos que pesquisar linearmente).

Com isso, tudo o que precisamos é de um vetor com $M$ posições que armazena listas encadeadas ou vetores com tamanho variável. Dessa forma, teremos uma estrutura de dados bem robusta a qual podemos inserir e imprimir todos os elementos de forma apropriada.

> Infelizmente não temos solução para Java no momento.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

struct ListaNo
{
    int valor;
    struct ListaNo *prox;
};

struct ListaEncadeada
{
    struct ListaNo *lista;
};

struct TabelaHash
{
    int n;
    struct ListaEncadeada *tabela;
};

void inicializaLista(struct ListaEncadeada *l)
{
    l->lista = NULL;
}

void destroiNo(struct ListaNo *p)
{
    if (p->prox != NULL)
    {
        destroiNo(p->prox);
    }

    free(p);
}

void destroiLista(struct ListaEncadeada *l)
{
    if (l->lista != NULL)
    {
        destroiNo(l->lista);
    }
}

struct ListaNo *adicionaNo(struct ListaNo *p, int valor)
{
    if (p == NULL)
    {
        struct ListaNo *novo = (struct ListaNo *)malloc(sizeof(struct ListaNo));
        novo->valor = valor;
        novo->prox = NULL;

        return novo;
    }
    else
    {
        p->prox = adicionaNo(p->prox, valor);
        return p;
    }
}

void adicionaElemento(struct ListaEncadeada *l, int valor)
{
    if (l == NULL)
    {
        l = (struct ListaEncadeada *)malloc(sizeof(struct ListaEncadeada));
    }

    l->lista = adicionaNo(l->lista, valor);
}

void imprimeLista(struct ListaEncadeada *l)
{
    if (l != NULL)
    {
        struct ListaNo *p = l->lista;

        while (p != NULL)
        {
            printf("%d -> ", p->valor);
            p = p->prox;
        }
    }

    printf("\\\n");
}

void inicializaTabelaHash(struct TabelaHash *tabela, int n)
{
    tabela->n = n;
    tabela->tabela = (struct ListaEncadeada *)malloc(n * sizeof(struct ListaEncadeada));

    for (int i = 0; i < n; ++i)
    {
        inicializaLista(&(tabela->tabela[i]));
    }
}

void destroiTabelaHash(struct TabelaHash *tabela)
{
    for (int i = 0; i < tabela->n; ++i)
    {
        destroiLista(&(tabela->tabela[i]));
    }

    tabela->n = 0;
    free(tabela->tabela);
}

int funcaoHash(struct TabelaHash *tabela, int valor)
{
    return valor % tabela->n;
}

void adicionaElementoTabela(struct TabelaHash *tabela, int valor)
{
    int indice = funcaoHash(tabela, valor);
    adicionaElemento(&(tabela->tabela[indice]), valor);
}

void imprimeTabelaHash(struct TabelaHash *tabela)
{
    for (int i = 0; i < tabela->n; ++i)
    {
        printf("%d -> ", i);
        imprimeLista(&(tabela->tabela[i]));
    }
}

int main()
{
    int N, M, C, numero;
    struct TabelaHash th;

    scanf("%d", &N);

    for (int k = 0; k < N; ++k)
    {
        if (k)
            printf("\n");

        scanf("%d %d", &M, &C);

        inicializaTabelaHash(&th, M);

        for (int i = 0; i < C; ++i)
        {
            scanf("%d", &numero);

            adicionaElementoTabela(&th, numero);
        }

        imprimeTabelaHash(&th);

        destroiTabelaHash(&th);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>
#include <list>

using namespace std;

int funcaoHash(int valor, int M)
{
    return valor % M;
}

int main()
{
    int N, M, C, numero;
    vector<list<int>> tabelaHash;

    cin >> N;

    for (int k = 0; k < N; ++k)
    {
        if (k)
            cout << endl;

        cin >> M >> C;

        tabelaHash.assign(M, list<int>());
        for (int i = 0; i < C; ++i)
        {
            cin >> numero;

            tabelaHash[funcaoHash(numero, M)].push_back(numero);
        }

        for (int i = 0; i < M; ++i)
        {
            cout << i << " -> ";

            for (list<int>::iterator it = tabelaHash[i].begin(); it != tabelaHash[i].end(); ++it)
            {
                cout << *it << " -> ";
            }

            cout << "\\" << endl;
        }
    }

    return 0;
}
```

### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;

class TabelaHash {
    public int chave { get; set; }
    public List<int>[] tabela { get; set; }

    public TabelaHash(int chave){
        this.chave = chave;
        this.tabela = new List<int>[chave];
        for(int i = 0; i < chave; ++i){
            this.tabela[i] = new List<int>();
        }
    }

    private int funcaoHash(int x){
        return x % this.chave;
    }

    public void adiciona(int x){
        this.tabela[this.funcaoHash(x)].Add(x);
    }

    private void imprimeLinha(int i){
        Console.Write($"{i} ->");
        for(int j = 0; j < this.tabela[i].Count; ++j){
            Console.Write($" {this.tabela[i][j]} ->");
        }
        Console.WriteLine(" \\");
    }

    public void imprime(){
        for(int i = 0; i < this.tabela.Length; ++i){
            this.imprimeLinha(i);
        }
    }
}

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            if(k > 0){
                Console.WriteLine("");
            }

            string[] entrada = Console.ReadLine().Trim().Split(' ');

            int M = int.Parse(entrada[0]);
            int C = int.Parse(entrada[1]);
            TabelaHash tabela = new TabelaHash(M);

            List<int> chaves = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int i = 0; i < chaves.Count; ++i){
                tabela.adiciona(chaves[i]);
            }

            tabela.imprime();
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

class TabelaHash{
    constructor(M){
        this.M = M;
        this.tabela = Array(M);
        for(let i = 0; i < this.M; ++i){
            this.tabela[i] = [];
        }
    }

    funcaoHash(valor){
        return valor % this.M;
    }

    adiciona(valor){
        this.tabela[this.funcaoHash(valor)].push(valor);
    }

    imprime(){
        for(let i = 0; i < this.M; ++i){
            if(this.tabela[i].length > 0){
                console.log(`${i} -> ${this.tabela[i].join(' -> ')} -> \\`);
            }else{
                console.log(`${i} -> \\`);
            }
        }
    }
}

N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    if(k)   console.log();

    let [M, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));

    th = new TabelaHash(M);
    numeros.map((x) => th.adiciona(x));
    th.imprime();
}
```

### Python 3.9
```py
class TabelaHash:
    def __init__(self, M):
        self.M = M
        self.tabela = [[] for _ in range(self.M)]

    def funcaoHash(self, valor):
        return valor % self.M

    def adiciona(self, valor):
        self.tabela[self.funcaoHash(valor)].append(str(valor))

    def imprime(self):
        for i in range(self.M):
            if(len(self.tabela[i]) > 0):
                lista = ' -> '.join(self.tabela[i])
                print(f'{i} -> {lista} -> \\')
            else:
                print(f'{i} -> \\')


N = int(input())

for i in range(N):
    if(i):
        print('')

    M, C = [int(x) for x in input().strip().split(' ')]
    numeros = [int(x) for x in input().strip().split(' ')]

    tabelaHash = TabelaHash(M)
    for numero in numeros:
        tabelaHash.adiciona(numero)
    tabelaHash.imprime()
```
