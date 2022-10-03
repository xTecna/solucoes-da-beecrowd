# 2635 - Navegador Web

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2635)

## Solução

Para resolver este problema, usamos uma estrutura de dados chamada _trie_, que organiza todas as nossas palavras em uma árvore e nos permite consultar de uma forma mais fácil e eficiente quantas palavras com cada prefixo existem. Para este problema específico, também criamos um novo campo para determinar qual a largura da maior palavra para cada nó da _trie_.

### C99

```c
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

struct TrieNo
{
    int qtd;
    int maxPalavra;

    struct TrieNo *prox[26];
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
    no->qtd = 0;
    no->maxPalavra = 0;
    for (int i = 0; i < 26; ++i)
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
    for (int i = 0; i < 26; ++i)
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
        int indice = palavra[i] - 'a';
        if (no->prox[indice] == NULL)
        {
            no->prox[indice] = (struct TrieNo *)malloc(sizeof(struct TrieNo));
            inicializaNo(no->prox[indice]);
        }
        no = no->prox[indice];
        no->qtd += 1;
        no->maxPalavra = max(no->maxPalavra, n);
    }
}

struct TrieNo *consultaPalavra(struct Trie *t, char *palavra)
{
    struct TrieNo *no = t->raiz;
    for (int i = 0; i < strlen(palavra); ++i)
    {
        int indice = palavra[i] - 'a';
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
    int N, Q;
    struct Trie *trie;
    char palavra[101];

    while (scanf("%d\n", &N) != EOF)
    {
        inicializa(&trie);

        for (int i = 0; i < N; ++i)
        {
            scanf("%s\n", &palavra);
            adicionaPalavra(&trie, palavra);
        }

        scanf("%d\n", &Q);
        for (int i = 0; i < Q; ++i)
        {
            scanf("%s\n", &palavra);
            struct TrieNo *p = consultaPalavra(&trie, palavra);

            if (p == NULL)
            {
                printf("-1\n");
            }
            else
            {
                printf("%d %d\n", p->qtd, p->maxPalavra);
            }
        }

        destroi(&trie);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>
#include <map>

using namespace std;

class TrieNo
{
public:
    int qtd;
    int maxPalavra;
    map<char, TrieNo> prox;

    TrieNo()
    {
        qtd = 0;
        maxPalavra = 0;
        prox = map<char, TrieNo>();
    }
};

class Trie
{
public:
    TrieNo raiz;

    Trie()
    {
        raiz = TrieNo();
    }

    void adicionaPalavra(string palavra)
    {
        TrieNo *no = &raiz;
        int n = palavra.length();
        for (int i = 0; i < n; ++i)
        {
            char indice = palavra[i];
            if (!(no->prox.count(indice)))
            {
                no->prox[indice] = TrieNo();
            }
            no = &(no->prox[indice]);
            no->qtd += 1;
            no->maxPalavra = max(no->maxPalavra, n);
        }
    }

    pair<int, int> consultaPalavra(string palavra)
    {
        TrieNo *no = &raiz;
        for (int i = 0; i < palavra.length(); ++i)
        {
            char indice = palavra[i];
            if (!(no->prox.count(indice)))
            {
                return pair<int, int>(-1, -1);
            }
            no = &(no->prox[indice]);
        }

        return pair<int, int>(no->qtd, no->maxPalavra);
    }
};

int main()
{
    int N, Q;
    string palavra;

    while (cin >> N)
    {
        Trie trie;

        for (int i = 0; i < N; ++i)
        {
            cin >> palavra;
            trie.adicionaPalavra(palavra);
        }

        cin >> Q;
        for (int i = 0; i < Q; ++i)
        {
            cin >> palavra;
            pair<int, int> resultado = trie.consultaPalavra(palavra);

            if (resultado.first == -1 && resultado.second == -1)
            {
                cout << -1 << endl;
            }
            else
            {
                cout << resultado.first << ' ' << resultado.second << endl;
            }
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Runtime;

class TrieNo{
    public int qtd;
    public int maxPalavra;
    public IDictionary<char, TrieNo> prox;

    public TrieNo(){
        qtd = 0;
        maxPalavra = 0;
        prox = new Dictionary<char, TrieNo>();
    }
}

class Trie{
    public TrieNo raiz;

    public Trie(){
        raiz = new TrieNo();
    }

    public void adicionaPalavra(string palavra){
        TrieNo no = raiz;

        for(int i = 0; i < palavra.Length; ++i){
            char indice = palavra[i];
            if(!(no.prox.ContainsKey(indice))){
                no.prox[indice] = new TrieNo();
            }
            no = no.prox[indice];
            no.qtd += 1;
            no.maxPalavra = Math.Max(no.maxPalavra, palavra.Length);
        }
    }

    public Tuple<int, int> consultaPalavra(string palavra){
        TrieNo no = raiz;

        for(int i = 0; i < palavra.Length; ++i){
            char indice = palavra[i];
            if(!(no.prox.ContainsKey(indice))){
                return new Tuple<int, int>(-1, -1);
            }
            no = no.prox[indice];
        }

        return new Tuple<int, int>(no.qtd, no.maxPalavra);
    }
}

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            Trie trie = new Trie();
            for(int i = 0; i < N; ++i){
                string palavra = Console.ReadLine();
                trie.adicionaPalavra(palavra);
            }

            int Q = int.Parse(Console.ReadLine());
            for(int i = 0; i < Q; ++i){
                string palavra = Console.ReadLine();
                Tuple<int, int> resultado = trie.consultaPalavra(palavra);

                if(resultado.Item1 == -1 && resultado.Item2 == -1){
                    Console.WriteLine(-1);
                }else{
                    Console.WriteLine($"{resultado.Item1} {resultado.Item2}");
                }
            }
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.lang.Math;

public class Main {
    public static class TrieNo {
        public int qtd;
        public int maxPalavra;

        public Map<Character, TrieNo> prox;

        public TrieNo() {
            qtd = 0;
            maxPalavra = 0;
            prox = new HashMap<Character, TrieNo>();
        }
    }

    public static class Trie {
        public TrieNo raiz;

        public Trie() {
            raiz = new TrieNo();
        }

        public void adicionaPalavra(String palavra) {
            TrieNo no = raiz;
            int n = palavra.length();
            for (int i = 0; i < n; ++i) {
                char indice = palavra.charAt(i);
                if (!(no.prox.containsKey(indice))) {
                    no.prox.put(indice, new TrieNo());
                }
                no = no.prox.get(indice);
                no.qtd += 1;
                no.maxPalavra = Math.max(no.maxPalavra, n);
            }
        }

        public TrieNo consultaPalavra(String palavra) {
            TrieNo no = raiz;
            for (int i = 0; i < palavra.length(); ++i) {
                char indice = palavra.charAt(i);
                if (!(no.prox.containsKey(indice))) {
                    return null;
                }
                no = no.prox.get(indice);
            }

            return no;
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            Trie trie = new Trie();

            int N = Integer.parseInt(in.readLine());
            for (int i = 0; i < N; ++i) {
                String palavra = in.readLine();
                trie.adicionaPalavra(palavra);
            }

            int Q = Integer.parseInt(in.readLine());
            for (int i = 0; i < Q; ++i) {
                String palavra = in.readLine();
                TrieNo no = trie.consultaPalavra(palavra);

                if (no == null) {
                    System.out.println(-1);
                } else {
                    System.out.printf("%d %d\n", no.qtd, no.maxPalavra);
                }
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const TrieNo = class {
    constructor() {
        this.qtd = 0;
        this.maxPalavra = 0;
        this.prox = {};
    }
};

const Trie = class {
    constructor() {
        this.raiz = new TrieNo();
    }

    adicionaPalavra(palavra) {
        let no = this.raiz;
        for (let i = 0; i < palavra.length; ++i) {
            let indice = palavra[i];
            if (no.prox[indice] === undefined) {
                no.prox[indice] = new TrieNo();
            }
            no = no.prox[indice];
            no.qtd += 1;
            no.maxPalavra = Math.max(no.maxPalavra, palavra.length);
        }
    }

    consultaPalavra(palavra) {
        let no = this.raiz;
        for (let i = 0; i < palavra.length; ++i) {
            let indice = palavra[i];
            if (no.prox[indice] === undefined) {
                return [-1, -1];
            }
            no = no.prox[indice];
        }

        return [no.qtd, no.maxPalavra];
    }
}

while (lines.length) {
    let trie = new Trie();

    let N = parseInt(lines.shift().trim());
    for (let i = 0; i < N; ++i) {
        let palavra = lines.shift().trim();
        trie.adicionaPalavra(palavra);
    }

    let Q = parseInt(lines.shift().trim());
    for (let i = 0; i < Q; ++i) {
        let palavra = lines.shift().trim();
        let [qtd, maxPalavra] = trie.consultaPalavra(palavra);

        if (qtd === -1 && maxPalavra === -1) {
            console.log(-1);
        } else {
            console.log(`${qtd} ${maxPalavra}`);
        }
    }
}
```

### Python 3.9

```py
class TrieNo:
    def __init__(self):
        self.qtd = 0
        self.maxPalavra = 0
        self.prox = {}


class Trie:
    def __init__(self):
        self.raiz = TrieNo()

    def adicionaPalavra(self, palavra):
        no = self.raiz
        n = len(palavra)
        for letra in palavra:
            if(not letra in no.prox):
                no.prox[letra] = TrieNo()
            no = no.prox[letra]
            no.qtd += 1
            no.maxPalavra = max(no.maxPalavra, n)

    def consultaPalavra(self, palavra):
        no = self.raiz
        for letra in palavra:
            if(not letra in no.prox):
                return (-1, -1)
            no = no.prox[letra]

        return (no.qtd, no.maxPalavra)


while True:
    try:
        trie = Trie()

        N = int(input())
        for _ in range(N):
            palavra = input()
            trie.adicionaPalavra(palavra)

        Q = int(input())
        for _ in range(N):
            palavra = input()
            qtd, maxPalavra = trie.consultaPalavra(palavra)

            if(qtd == -1 and maxPalavra == -1):
                print(-1)
            else:
                print(f'{qtd} {maxPalavra}')
    except EOFError:
        break
```