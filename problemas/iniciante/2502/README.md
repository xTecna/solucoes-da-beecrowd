# 2502 - Decifrando a Carta Criptografada

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2502)

## Solução

A cifra só pode ser constituída por letras maiúsculas e símbolos. Com isso, a tradução de um caractere a outro pode ser feito em quatro casos diferentes:

| Tradução | para letra | para símbolo |
|-|------------|--------------|
| **de letra** | letra maiúscula vira letra maiúscula, letra minúscula vira letra minúscula | letra maiúscula vira símbolo, letra minúscula vira símbolo |
| **de símbolo** | símbolo vira letra minúscula | símbolo vira símbolo |

A melhor forma de fazer essas regras valerem é associando da forma que eu fiz nas implementações abaixo, pois dessa forma a letra minúscula sempre sobrescreve a letra maiúscula sempre leva prioridade, não há necessidade de explicitamente trazer todos esses casos da tabela à tona.

> Na linguagem C, eu tive alguns problemas para ler a frase, então tive que capturar letra por letra.

### C99

```c
#include <stdio.h>
#include <ctype.h>

int main()
{
    int C, N;
    char cifra1[21], cifra2[21], traducao[256];

    while (scanf("%d %d\n", &C, &N) != EOF)
    {
        for (int i = 32; i < 123; ++i)
        {
            traducao[i] = i;
        }

        scanf("%[^\n]\n", &cifra1);
        scanf("%[^\n]\n", &cifra2);

        for (int i = 0; i < C; ++i)
        {
            char maiuscula1 = cifra1[i], minuscula1 = isalpha(cifra1[i]) ? tolower(cifra1[i]) : cifra1[i];
            char maiuscula2 = cifra2[i], minuscula2 = isalpha(cifra2[i]) ? tolower(cifra2[i]) : cifra2[i];

            traducao[maiuscula1] = maiuscula2;
            traducao[minuscula1] = minuscula2;
            traducao[maiuscula2] = maiuscula1;
            traducao[minuscula2] = minuscula1;
        }

        for (int i = 0; i < N; ++i)
        {
            char letra;
            while (scanf("%c", &letra) != EOF)
            {
                if (letra == '\n')
                {
                    break;
                }

                printf("%c", traducao[letra]);
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <string>
#include <cctype>
#include <map>

using namespace std;

int main()
{
    int N, C;
    map<char, char> traducao;
    string cifra1, cifra2, frase;

    while (cin >> C >> N)
    {
        traducao.clear();

        cin.ignore();
        getline(cin, cifra1);
        getline(cin, cifra2);

        for (int i = 0; i < C; ++i)
        {
            char maiuscula1 = cifra1[i], minuscula1 = isalpha(cifra1[i]) ? tolower(cifra1[i]) : cifra1[i];
            char maiuscula2 = cifra2[i], minuscula2 = isalpha(cifra2[i]) ? tolower(cifra2[i]) : cifra2[i];

            traducao[maiuscula1] = maiuscula2;
            traducao[minuscula1] = minuscula2;
            traducao[maiuscula2] = maiuscula1;
            traducao[minuscula2] = minuscula1;
        }

        for (int i = 0; i < N; ++i)
        {
            getline(cin, frase);

            for (int j = 0; j < frase.length(); ++j)
            {
                if (traducao.count(frase[j]))
                {
                    cout << traducao[frase[j]];
                }
                else
                {
                    cout << frase[j];
                }
            }
            cout << endl;
        }
        cout << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void adiciona(Dictionary<char, char> mapa, char chave, char valor){
        if(mapa.ContainsKey(chave)){
            mapa.Remove(chave);
        }
        mapa.Add(chave, valor);
    }

    static void Main(string[] args) {
        string entrada;
        Dictionary<char, char> traducao = new Dictionary<char, char>();

        while((entrada = Console.ReadLine()) != null){
            traducao.Clear();

            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            string cifra1 = Console.ReadLine();
            string lowerCifra1 = cifra1.ToLower();
            string cifra2 = Console.ReadLine();
            string lowerCifra2 = cifra2.ToLower();
            for(int i = 0; i < cifra1.Length; ++i){
                adiciona(traducao, cifra1[i], cifra2[i]);
                adiciona(traducao, lowerCifra1[i], lowerCifra2[i]);
                adiciona(traducao, cifra2[i], cifra1[i]);
                adiciona(traducao, lowerCifra2[i], lowerCifra1[i]);
            }

            for(int i = 0; i < numeros[1]; ++i){
                string frase = Console.ReadLine();
                for(int j = 0; j < frase.Length; ++j){
                    if(traducao.ContainsKey(frase[j])){
                        Console.Write(traducao[frase[j]]);
                    }else{
                        Console.Write(frase[j]);
                    }
                }
                Console.WriteLine("");
            }
            Console.WriteLine("");
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

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            Map<Character, Character> traducao = new HashMap<Character, Character>();

            String[] entrada = in.readLine().trim().split(" ");
            int C = Integer.parseInt(entrada[0]);
            int N = Integer.parseInt(entrada[1]);

            String cifra1 = in.readLine();
            String lowerCifra1 = cifra1.toLowerCase();
            String cifra2 = in.readLine();
            String lowerCifra2 = cifra2.toLowerCase();
            for (int i = 0; i < C; ++i) {
                traducao.put(cifra1.charAt(i), cifra2.charAt(i));
                traducao.put(lowerCifra1.charAt(i), lowerCifra2.charAt(i));
                traducao.put(cifra2.charAt(i), cifra1.charAt(i));
                traducao.put(lowerCifra2.charAt(i), lowerCifra1.charAt(i));
            }

            for (int i = 0; i < N; ++i) {
                String frase = in.readLine();

                for (int j = 0; j < frase.length(); ++j) {
                    if (traducao.containsKey(frase.charAt(j))) {
                        System.out.print(traducao.get(frase.charAt(j)));
                    } else {
                        System.out.print(frase.charAt(j));
                    }
                }
                System.out.println("");
            }
            System.out.println("");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [C, N] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let cifra1 = lines.shift();
    let lowerCifra1 = cifra1.toLowerCase();
    let cifra2 = lines.shift();
    let lowerCifra2 = cifra2.toLowerCase();

    let traducao = {};
    for (let i = 0; i < C; ++i) {
        traducao[cifra1[i]] = cifra2[i];
        traducao[lowerCifra1[i]] = lowerCifra2[i];
        traducao[cifra2[i]] = cifra1[i];
        traducao[lowerCifra2[i]] = lowerCifra1[i];
    }

    for (let i = 0; i < N; ++i) {
        let frase = lines.shift();

        let fraseTraduzida = '';
        for (let j = 0; j < frase.length; ++j) {
            fraseTraduzida += traducao[frase[j]] !== undefined ? traducao[frase[j]] : frase[j];
        }
        console.log(fraseTraduzida);
    }
    console.log('');
}
```

### Python 3.9

```py
while True:
    try:
        traducao = {}

        C, N = [int(x) for x in input().strip().split(' ')]

        cifra1 = input()
        lowerCifra1 = cifra1.lower()
        cifra2 = input()
        lowerCifra2 = cifra2.lower()
        for i in range(C):
            traducao[cifra1[i]] = cifra2[i]
            traducao[lowerCifra1[i]] = lowerCifra2[i]
            traducao[cifra2[i]] = cifra1[i]
            traducao[lowerCifra2[i]] = lowerCifra1[i]

        for _ in range(N):
            frase = input()
            for letra in frase:
                print(traducao.get(letra, letra), end='')
            print('')
        print('')

    except EOFError:
        break
```