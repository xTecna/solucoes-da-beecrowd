# 2493 - Jogo do Operador

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2493)

## Solução

Esse é um daqueles problemas onde lidar com a entrada é mais difícil do que o problema em si.

Algumas opções para resolvê-lo incluem deixar para verificar se cada opção é correta à medida que as pessoas vão perguntando ou fazer uma pré-computação de todas as respostas para retorná-las mais a frente, ambas as abordagens são válidas. Aqui seguimos com a primeira opção.

> Na linguagem C#, precisei usar um comparador ordinal para customizar a ordenação para o padrão lexicográfico que o problema pede.

### C99

```c
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int soma(int *expressao)
{
    return expressao[0] + expressao[1] == expressao[2];
}

int subtracao(int *expressao)
{
    return expressao[0] - expressao[1] == expressao[2];
}

int multiplicacao(int *expressao)
{
    return expressao[0] * expressao[1] == expressao[2];
}

int compare(const void *a, const void *b)
{
    return strcmp((char *)a, (char *)b);
}

int main()
{
    int T, E, expressao[50][3];
    char operador, nome[101], errados[50][101];

    while (scanf("%d\n", &T) != EOF)
    {
        for (int i = 0; i < T; ++i)
        {
            scanf("%d %d=%d\n", &expressao[i][0], &expressao[i][1], &expressao[i][2]);
        }

        int n_errados = 0;
        for (int i = 0; i < T; ++i)
        {
            scanf("%s %d %c\n", &nome, &E, &operador);

            switch (operador)
            {
            case '+':
                if (!soma(expressao[E - 1]))
                {
                    strcpy(errados[n_errados++], nome);
                }
                break;
            case '-':
                if (!subtracao(expressao[E - 1]))
                {
                    strcpy(errados[n_errados++], nome);
                }
                break;
            case '*':
                if (!multiplicacao(expressao[E - 1]))
                {
                    strcpy(errados[n_errados++], nome);
                }
                break;
            case 'I':
                if (soma(expressao[E - 1]) || subtracao(expressao[E - 1]) || multiplicacao(expressao[E - 1]))
                {
                    strcpy(errados[n_errados++], nome);
                }
                break;
            }
        }

        if (n_errados == 0)
        {
            printf("You Shall All Pass!\n");
        }
        else if (n_errados == T)
        {
            printf("None Shall Pass!\n");
        }
        else
        {
            qsort(errados, n_errados, sizeof(char) * 101, compare);
            printf("%s", errados[0]);
            for (int i = 1; i < n_errados; ++i)
            {
                printf(" %s", errados[i]);
            }
            printf("\n");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <algorithm>
#include <iostream>
#include <sstream>
#include <vector>

using namespace std;

struct expressao
{
    int x;
    int y;
    int z;
};

expressao leEntrada(int X, string YZ)
{
    expressao entrada;

    entrada.x = X;

    stringstream fluxo;
    int indice = YZ.find('=');
    fluxo << YZ.substr(0, indice);
    fluxo >> entrada.y;
    fluxo.clear();
    fluxo << YZ.substr(indice + 1);
    fluxo >> entrada.z;

    return entrada;
}

bool soma(expressao e)
{
    return e.x + e.y == e.z;
}

bool subtracao(expressao e)
{
    return e.x - e.y == e.z;
}

bool multiplicacao(expressao e)
{
    return e.x * e.y == e.z;
}

int main()
{
    int T, X, E;
    char operador;
    string nome, YZ;
    vector<string> errados;
    vector<expressao> expressoes;

    while (cin >> T)
    {
        errados.clear();
        expressoes.clear();

        for (int i = 0; i < T; ++i)
        {
            cin >> X >> YZ;
            expressoes.push_back(leEntrada(X, YZ));
        }

        for (int i = 0; i < T; ++i)
        {
            cin >> nome >> E >> operador;

            switch (operador)
            {
            case '+':
                if (!soma(expressoes[E - 1]))
                {
                    errados.push_back(nome);
                }
                break;
            case '-':
                if (!subtracao(expressoes[E - 1]))
                {
                    errados.push_back(nome);
                }
                break;
            case '*':
                if (!multiplicacao(expressoes[E - 1]))
                {
                    errados.push_back(nome);
                }
                break;
            case 'I':
                if (soma(expressoes[E - 1]) || subtracao(expressoes[E - 1]) || multiplicacao(expressoes[E - 1]))
                {
                    errados.push_back(nome);
                }
                break;
            }
        }

        if (errados.size() == 0)
        {
            cout << "You Shall All Pass!" << endl;
        }
        else if (errados.size() == T)
        {
            cout << "None Shall Pass!" << endl;
        }
        else
        {
            sort(errados.begin(), errados.end());
            cout << errados[0];
            for (int i = 1; i < errados.size(); ++i)
            {
                cout << " " << errados[i];
            }
            cout << endl;
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
using System.Runtime;

class URI {
    static bool soma(int[] expressao){
        return expressao[0] + expressao[1] == expressao[2];
    }

    static bool subtracao(int[] expressao){
        return expressao[0] - expressao[1] == expressao[2];
    }

    static bool multiplicacao(int[] expressao){
        return expressao[0] * expressao[1] == expressao[2];
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int T = int.Parse(entrada);

            List<string> errados = new List<string>();
            List<int[]> expressoes = new List<int[]>();
            for(int i = 0; i < T; ++i){
                String[] numeros = Console.ReadLine().Trim().Split(' ');
                String[] YZ = numeros[1].Split('=');
                expressoes.Add(new int[3] {int.Parse(numeros[0]), int.Parse(YZ[0]), int.Parse(YZ[1])});
            }

            for(int i = 0; i < T; ++i){
                String[] jogada = Console.ReadLine().Trim().Split(' ');
                int E = int.Parse(jogada[1]);

                switch(jogada[2]){
                    case "+":   if(!soma(expressoes[E - 1])){
                                    errados.Add(jogada[0]);
                                }
                                break;
                    case "-":   if(!subtracao(expressoes[E - 1])){
                                    errados.Add(jogada[0]);
                                }
                                break;
                    case "*":   if(!multiplicacao(expressoes[E - 1])){
                                    errados.Add(jogada[0]);
                                }
                                break;
                    case "I":   if(soma(expressoes[E - 1]) || subtracao(expressoes[E - 1]) || multiplicacao(expressoes[E - 1])){
                                    errados.Add(jogada[0]);
                                }
                                break;
                }
            }

            if(errados.Count() == 0){
                Console.WriteLine("You Shall All Pass!");
            }else if(errados.Count() == T){
                Console.WriteLine("None Shall Pass!");
            }else{
                errados.Sort(StringComparer.Ordinal);
                Console.WriteLine(string.Join(" ", errados));
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
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Vector;

public class Main {
    public static boolean soma(int[] expressao) {
        return expressao[0] + expressao[1] == expressao[2];
    }

    public static boolean subtracao(int[] expressao) {
        return expressao[0] - expressao[1] == expressao[2];
    }

    public static boolean multiplicacao(int[] expressao) {
        return expressao[0] * expressao[1] == expressao[2];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine().trim());

            int[][] expressoes = new int[T][3];
            for (int i = 0; i < T; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                String[] YZ = entrada[1].trim().split("=");
                expressoes[i] = new int[] { Integer.parseInt(entrada[0].trim()), Integer.parseInt(YZ[0].trim()),
                        Integer.parseInt(YZ[1].trim()) };
            }

            List<String> errados = new Vector<String>();
            for (int i = 0; i < T; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int E = Integer.parseInt(entrada[1]);

                switch (entrada[2]) {
                    case "+":
                        if (!soma(expressoes[E - 1])) {
                            errados.add(entrada[0]);
                        }
                        break;
                    case "-":
                        if (!subtracao(expressoes[E - 1])) {
                            errados.add(entrada[0]);
                        }
                        break;
                    case "*":
                        if (!multiplicacao(expressoes[E - 1])) {
                            errados.add(entrada[0]);
                        }
                        break;
                    case "I":
                        if (soma(expressoes[E - 1]) || subtracao(expressoes[E - 1])
                                || multiplicacao(expressoes[E - 1])) {
                            errados.add(entrada[0]);
                        }
                        break;
                }
            }

            if (errados.size() == 0) {
                System.out.println("You Shall All Pass!");
            } else if (errados.size() == T) {
                System.out.println("None Shall Pass!");
            } else {
                Collections.sort(errados);
                System.out.println(String.join(" ", errados));
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const soma = (expressao) => expressao[0] + expressao[1] === expressao[2];
const subtracao = (expressao) => expressao[0] - expressao[1] === expressao[2];
const multiplicacao = (expressao) => expressao[0] * expressao[1] === expressao[2];

while (lines.length) {
    let T = parseInt(lines.shift().trim());

    let expressoes = [];
    for (let i = 0; i < T; ++i) {
        let [X, YZ] = lines.shift().trim().split(' ');
        YZ = YZ.trim().split('=').map(x => parseInt(x));
        expressoes.push([parseInt(X), YZ[0], YZ[1]]);
    }

    let errados = [];
    for (let i = 0; i < T; ++i) {
        let [nome, E, operador] = lines.shift().trim().split(' ');
        E = parseInt(E);

        switch (operador) {
            case '+': if (!soma(expressoes[E - 1])) {
                errados.push(nome);
            }
                break;
            case '-': if (!subtracao(expressoes[E - 1])) {
                errados.push(nome);
            }
                break;
            case '*': if (!multiplicacao(expressoes[E - 1])) {
                errados.push(nome);
            }
                break;
            case 'I': if (soma(expressoes[E - 1]) || subtracao(expressoes[E - 1]) || multiplicacao(expressoes[E - 1])) {
                errados.push(nome);
            }
                break;
        }
    }

    if (errados.length === 0) {
        console.log('You Shall All Pass!');
    } else if (errados.length === T) {
        console.log('None Shall Pass!');
    } else {
        errados.sort();
        console.log(errados.join(' '));
    }
}
```

### Python 3.9

```py
def soma(expressao):
    return expressao[0] + expressao[1] == expressao[2]


def subtracao(expressao):
    return expressao[0] - expressao[1] == expressao[2]


def multiplicacao(expressao):
    return expressao[0] * expressao[1] == expressao[2]


while True:
    try:
        T = int(input())

        expressoes = []
        for _ in range(T):
            X, YZ = input().strip().split(' ')
            YZ = [int(x) for x in YZ.strip().split('=')]
            expressoes.append([int(X), YZ[0], YZ[1]])

        errados = []
        for _ in range(T):
            nome, E, operador = input().strip().split(' ')
            E = int(E)

            if(operador == '+' and not soma(expressoes[E - 1])):
                errados.append(nome)
            elif(operador == '-' and not subtracao(expressoes[E - 1])):
                errados.append(nome)
            elif(operador == '*' and not multiplicacao(expressoes[E - 1])):
                errados.append(nome)
            elif(operador == 'I' and (soma(expressoes[E - 1]) or subtracao(expressoes[E - 1]) or multiplicacao(expressoes[E - 1]))):
                errados.append(nome)

        if(len(errados) == 0):
            print('You Shall All Pass!')
        elif(len(errados) == T):
            print('None Shall Pass!')
        else:
            errados.sort()
            print(' '.join(errados))
    except EOFError:
        break
```