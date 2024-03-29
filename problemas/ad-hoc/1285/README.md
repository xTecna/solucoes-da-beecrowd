# 1285 - Dígitos Diferentes

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1285)

## Solução

Uma maneira simples e viável de resolver este problema é, para cada intervalo, fazer um looping de cada número perguntando se ele tem dígito repetido e contando caso não tenha. Com essa abordagem, é fácil perceber que para vários casos de teste, vamos ter que verificar diversas vezes se o mesmo número tem dígitos repetidos diversas vezes.

Para mitigar isso, é mais fácil perguntar logo se todos os números entre $1$ e $5000$ têm dígitos repetidos e guardar em um vetor a quantidade de números com dígitos diferentes entre $0$ e $5000$ baseado nas respostas que for encontrando. Com isso, teremos um vetor onde para qualquer índice $i$ teremos a informação de quantos números com dígitos não repetidos tem entre $0$ e $i$, inclusive. Logo, para vermos quantos números com dígitos não repetidos existem entre $a$ e $b$, basta diminuirmos o valor do índice $b$ pelo valor do índice $a - 1$ (para conseguirmos a quantidade de números não repetidos entre $a$ e $b$).

Repare que só precisamos fazer esse cálculo geral uma vez, o que nas implementações abaixo é feito executando no começo de tudo a função `preCalcula()`. Uma vez calculado, só precisamos acessar o vetor `resposta`.

### C99
```c
#include <string.h>
#include <stdio.h>

int resposta[5001];

int repetido(int n){
    int digitos[10];

    memset(digitos, 0, sizeof(digitos));

    while(n){
        if(digitos[n%10])   return 1;
        digitos[n%10] += 1;
        n /= 10;
    }

    return 0;
}

void preCalcula(){
    memset(resposta, 0, sizeof(resposta));

    for(int i = 1; i < 5001; ++i){
        resposta[i] = resposta[i - 1];
        if(!repetido(i)) resposta[i] += 1;
    }
}

int digitosDiferentes(int a, int b){
    return resposta[b] - resposta[a - 1];
}

int main(){
    int N, M;

    preCalcula();

    while(scanf("%d %d", &N, &M) != EOF){
        printf("%d\n", digitosDiferentes(N, M));
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <vector>

using namespace std;

vector<int> resposta;

bool repetido(int n){
    vector<bool> digitos;

    digitos.assign(10, false);

    while(n){
        if(digitos[n%10])   return true;
        digitos[n%10] = true;
        n /= 10;
    }

    return false;
}

void preCalcula(){
    resposta.assign(5001, 0);

    for(int i = 1; i < 5001; ++i){
        resposta[i] = resposta[i - 1];
        if(!repetido(i)) resposta[i] += 1;
    }
}

int digitosDiferentes(int a, int b){
    return resposta[b] - resposta[a - 1];
}

int main(){
    int N, M;

    preCalcula();

    while(cin >> N >> M){
        cout << digitosDiferentes(N, M) << endl;
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
    static int[] resposta;

    static bool repetido(int n){
        List<bool> digitos = new List<bool>();
        for(int i = 0; i < 10; ++i){
            digitos.Add(false);
        }
        
        while(n > 0){
            if(digitos[n % 10]){
                return true;
            }
            digitos[n % 10] = true;
            n /= 10;
        }

        return false;
    }

    static void preCalcula(){
        resposta = new int[5001];

        resposta[0] = 0;
        for(int i = 1; i < 5001; ++i){
            resposta[i] = resposta[i - 1];
            if(!repetido(i)){
                resposta[i] += 1;
            }
        }
    }

    static int digitosDiferentes(int a, int b){
        return resposta[b] - resposta[a - 1];
    }
    
    static void Main(string[] args) {
        string entrada;

        preCalcula();

        while((entrada = Console.ReadLine()) != null){
            List<int> NM = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            Console.WriteLine(digitosDiferentes(NM[0], NM[1]));
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int[] resposta;
    
    public static boolean repetido(int n){
        boolean[] digitos = new boolean[10];
        for(int i = 0; i < 10; ++i){
            digitos[i] = false;
        }

        while(n > 0){
            if(digitos[n % 10]){
                return true;
            }
            digitos[n % 10] = true;
            n /= 10;
        }

        return false;
    }

    public static void preCalcula(){
        resposta = new int[5001];

        resposta[0] = 0;
        for(int i = 1; i < 5001; ++i){
            resposta[i] = resposta[i - 1];
            if(!repetido(i)){
                resposta[i] += 1;
            }
        }
    }

    public static int digitosDiferentes(int a, int b){
        return resposta[b] - resposta[a - 1];
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        preCalcula();

        while(in.ready()){
            String[] NM = in.readLine().trim().split(" ");
            int N = Integer.parseInt(NM[0]);
            int M = Integer.parseInt(NM[1]);

            System.out.println(digitosDiferentes(N, M));
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let resposta = Array(5001);
resposta.fill(0);

const repetido = (n) => {
    let digitos = n.toString().split('');
    let digitosDiferentes = new Set(digitos);

    return digitos.length !== digitosDiferentes.size;
};

const preCalcula = () => {
    for(let i = 1; i < 5001; ++i){
        resposta[i] = resposta[i - 1];
        if(!repetido(i)) resposta[i] += 1;
    }
};

const digitosDiferentes = (a, b) => {
    return resposta[b] - resposta[a - 1];
};

preCalcula();

while(lines.length){
    let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(digitosDiferentes(N, M));
}
```

### Python 3.9
```py
resposta = [0 for _ in range(5001)]

def repetido(n):
    digitos = str(n)
    digitosDiferentes = set(digitos)

    return len(digitos) != len(digitosDiferentes)

def preCalcula():
    for i in range(1, 5001):
        resposta[i] = resposta[i - 1]
        if(not repetido(i)):
            resposta[i] += 1

def digitosDiferentes(a, b):
    return resposta[b] - resposta[a - 1]

preCalcula()

while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        print(digitosDiferentes(N, M))
    except EOFError:
        break
```