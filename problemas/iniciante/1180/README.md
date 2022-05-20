# 1180 - Menor e Posição

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1180)

## Solução

Não é necessário guardar o vetor inteiro, a única coisa que nos interessa é guardar o valor do menor elemento e sua posição.

Normalmente nesses exercícios, a convenção é pegar o menor valor possível de um inteiro para começar, mas eu acho mais fácil assumir que o menor elemento é o primeiro e ler o resto do vetor pra ver se esse é realmente o caso.

> Infelizmente não temos solução para C# e Python ainda.

### C99

```c
#include <stdio.h>

int main()
{
    int N, numero, menor, posicao;

    scanf("%d", &N);

    scanf("%d", &menor);
    posicao = 0;

    for (int i = 1; i < N; ++i)
    {
        scanf("%d", &numero);

        if (numero < menor)
        {
            menor = numero;
            posicao = i;
        }
    }

    printf("Menor valor: %d\n", menor);
    printf("Posicao: %d\n", posicao);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, numero, menor, posicao;

    cin >> N;

    cin >> menor;
    posicao = 0;

    for (int i = 1; i < N; ++i)
    {
        cin >> numero;

        if (numero < menor)
        {
            menor = numero;
            posicao = i;
        }
    }

    cout << "Menor valor: " << menor << endl;
    cout << "Posicao: " << posicao << endl;

    return 0;
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int N = Integer.parseInt(in.readLine());

        String[] entrada = in.readLine().trim().split(" ");

        int menor = Integer.parseInt(entrada[0]);
        int posicao = 0;
        for(int i = 1; i < N; ++i){
            int numero = Integer.parseInt(entrada[i]);

            if(numero < menor)
            {
                menor = numero;
                posicao = i;
            }
        }

        System.out.printf("Menor valor: %d\n", menor);
        System.out.printf("Posicao: %d\n", posicao);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

let entrada = lines.shift().trim().split(' ').map((x) => parseInt(x));

let menor = entrada[0];
let posicao = 0;
for (let i = 1; i < N; ++i) {
    if (entrada[i] < menor) {
        menor = entrada[i];
        posicao = i;
    }
}

console.log(`Menor valor: ${menor}`);
console.log(`Posicao: ${posicao}`);
```