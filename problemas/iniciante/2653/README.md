# 2653 - Dijkstra

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2653)

## Solução

Podemos colocar todas as joias em um conjunto e depois ver quantos elementos o conjunto possui, já que conjuntos garantem que todos os valores armazenados neste são distintos entre si.

> Na linguagem C, eu fiz uma solução alternativa com _tries_ porque eu achei que implementar uma _trie_ era mais fácil que implementar um conjunto. Neste caso, eu primeiro verifico se a joia já existe antes de colocá-la na _trie_.

### C99

```c
#include <string.h>
#include <stdio.h>

struct TrieNo
{
    int fim;

    struct TrieNo *prox[2];
};

struct Trie
{
    struct TrieNo *raiz;
};

int max(int a, int b)
{
    return a > b ? a : b;
}

void inicializaNo(struct TrieNo *no)
{
    no->fim = 0;
    for (int i = 0; i < 2; ++i)
    {
        no->prox[i] = NULL;
    }
}

void inicializa(struct Trie *t)
{
    t->raiz = (struct TrieNo *)malloc(sizeof(struct TrieNo));
    inicializaNo(t->raiz);
}

void destroiNo(struct TrieNo *no)
{
    for (int i = 0; i < 2; ++i)
    {
        if (no->prox[i] != NULL)
        {
            destroiNo(no->prox[i]);
        }
    }
    free(no);
}

void destroi(struct Trie *t)
{
    destroiNo(t->raiz);
}

void adicionaPalavra(struct Trie *t, char *palavra)
{
    struct TrieNo *no = t->raiz;
    int n = strlen(palavra);
    for (int i = 0; i < n; ++i)
    {
        int indice = palavra[i] - '(';
        if (no->prox[indice] == NULL)
        {
            no->prox[indice] = (struct TrieNo *)malloc(sizeof(struct TrieNo));
            inicializaNo(no->prox[indice]);
        }
        no = no->prox[indice];
    }
    no->fim = 1;
}

struct TrieNo *consultaPalavra(struct Trie *t, char *palavra)
{
    struct TrieNo *no = t->raiz;
    for (int i = 0; i < strlen(palavra); ++i)
    {
        int indice = palavra[i] - '(';
        if (no->prox[indice] == NULL)
        {
            return NULL;
        }
        no = no->prox[indice];
    }

    return no;
}

int main()
{
    int resposta;
    struct Trie trie;
    char joia[100001];

    resposta = 0;
    inicializa(&trie);
    while (scanf("%s\n", &joia) != EOF)
    {
        struct TrieNo *no = consultaPalavra(&trie, joia);
        if (no == NULL || !(no->fim))
        {
            ++resposta;
            adicionaPalavra(&trie, joia);
        }
    }

    printf("%d\n", resposta);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <set>

using namespace std;

int main()
{
    string joia;
    set<string> joias;

    while (cin >> joia)
    {
        joias.insert(joia);
    }

    cout << joias.size() << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        string joia;

        HashSet<string> joias = new HashSet<string>();
        while((joia = Console.ReadLine()) != null){
            joias.Add(joia);
        }

        Console.WriteLine(joias.Count);
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        HashSet<String> joias = new HashSet<String>();
        while (in.ready()) {
            String joia = in.readLine();
            joias.add(joia);
        }

        System.out.println(joias.size());
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let joias = new Set();

let p = 0;
while (p < lines.length) {
    let joia = lines[p++].trim();
    joias.add(joia);
}

console.log(joias.size);
```

### Python 3.9

```py
joias = set()

while True:
    try:
        joia = input()
        joias.add(joia)
    except EOFError:
        break

print(len(joias))
```