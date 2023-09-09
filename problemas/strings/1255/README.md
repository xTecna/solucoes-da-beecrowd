# 1255 - Frequência de Letras

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1255)

## Solução

Você pode usar o [código ASCII](../../../base-teorica/strings/ascii/README.md) para te ajudar a mapear as frequências em apenas um vetor de 26 posições ou usar um dicionário para depois descobrir qual é o maior número e depois as letras que tem as maiores frequências.

A maior parte dos dicionários não é ordenado, então se for usar dicionários você precisa reordenar as letras com mais frequência porque nem sempre elas estarão na ordem certa. Confira a página de [ordenação](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md) para ver como ordenar caso precise.

### C99
```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main(){
    int N;
    char frase[201];
    int maior, frequencias[26];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        memset(frequencias, 0, sizeof(frequencias));

        scanf("%[^\n]\n", &frase);

        for(int j = 0; j < strlen(frase); ++j){
            if(isalpha(frase[j]))   frequencias[tolower(frase[j]) - 'a']++;
        }

        maior = 0;
        for(int j = 0; j < 26; ++j){
            if(maior < frequencias[j])  maior = frequencias[j];
        }

        for(int j = 0; j < 26; ++j){
            if(frequencias[j] == maior) printf("%c", j + 'a');
        }
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cctype>
#include <map>

using namespace std;

int main(){
    int N, maior;
    string frase;
    map<char, int> frequencias;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        frequencias.clear();

        getline(cin, frase);

        for(int j = 0; j < frase.length(); ++j){
            if(isalpha(frase[j])){
                frase[j] = tolower(frase[j]);
                if(!frequencias.count(frase[j]))    frequencias[frase[j]] = 0;
                frequencias[frase[j]]++;
            }
        }

        maior = 0;
        for(map<char, int>::iterator it = frequencias.begin(); it != frequencias.end(); ++it){
            if(it->second > maior)  maior = it->second;
        }

        for(map<char, int>::iterator it = frequencias.begin(); it != frequencias.end(); ++it){
            if(it->second == maior) cout << it->first;
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

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            Dictionary<char, int> frequencias = new Dictionary<char, int>();
            
            string texto = Console.ReadLine().ToLower();
            for(int i = 0; i < texto.Length; ++i){
                if(char.IsLetter(texto[i])){
                    if(!frequencias.ContainsKey(texto[i])){
                        frequencias[texto[i]] = 0;
                    }
                    frequencias[texto[i]] += 1;
                }
            }
            
            int maior = 0;
            foreach(KeyValuePair<char, int> frequencia in frequencias){
                if(frequencia.Value > maior){
                    maior = frequencia.Value;
                }
            }
            
            List<char> letras = new List<char>();
            foreach(KeyValuePair<char, int> frequencia in frequencias){
                if(frequencia.Value == maior){
                    letras.Add(frequencia.Key);
                }
            }
            
            letras.Sort();
            Console.WriteLine(String.Join("", letras));
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int k = 0; k < N; ++k){
            String texto = in.readLine().trim().toLowerCase();

            HashMap<Character, Integer> frequencias = new HashMap<Character,Integer>();
            for(int i = 0; i < texto.length(); ++i){
                char letra = texto.charAt(i);
                if(Character.isAlphabetic(letra)){
                    if(!frequencias.containsKey(letra)){
                        frequencias.put(letra, 0);
                    }
                    frequencias.put(letra, frequencias.get(letra) + 1);
                }
            }

            int maior = 0;
            for (int valor : frequencias.values()){
                if(valor > maior){
                    maior = valor;
                }
            }

            String letras = "";
            for (char letra : frequencias.keySet()){
                if(frequencias.get(letra) == maior){
                    letras += letra;
                }
            }
            char[] resposta = letras.toCharArray();
            Arrays.sort(resposta);
            System.out.println(resposta);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let frase = lines.shift().trim().toLowerCase().split('');

    let frequencias = frase.reduce((acc, cur) => {
        if(/[A-Za-z]/.test(cur)){
            if(!(cur in acc)) acc[cur] = 0;
            acc[cur] += 1;
        }
        return acc;
    }, {});
    let maior = Object.values(frequencias).reduce((acc, cur) => acc < cur ? cur : acc, 0);
    
    let resposta = [];
    for (let letra in frequencias){
        if(frequencias[letra] === maior)    resposta.push(letra);
    }

    resposta.sort();
    console.log(resposta.join(''));
}
```

### Python 3.9
```py
N = int(input())

for _ in range(N):
    frase = input().strip().lower()

    frequencias = {}
    for letra in frase:
        if(letra.isalpha()):
            if(not letra in frequencias):
                frequencias[letra] = 0
            frequencias[letra] += 1
    
    maior = 0
    for letra in frequencias:
        maior = frequencias[letra] if frequencias[letra] > maior else maior
    
    resposta = []
    for letra in frequencias:
        if(frequencias[letra] == maior):
            resposta.append(letra)
    
    resposta.sort()
    print(''.join(resposta))
```