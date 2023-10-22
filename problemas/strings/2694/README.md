# 2694 - Problema com a Calculadora

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2694)

## Solução

Os números sempre aparecem na mesma posição, então você pode tirar as _substrings_ de cada parte e operar na soma convertendo essas strings em números.

### C99
```c
#include <stdio.h>
#include <string.h>

int main(void) {
    int N;
    int parcelas[3];
    char linha[15], parcelas_string[3][4];

    scanf("%d\n", &N);
    for (int k = 0; k < N; ++k) {
        scanf("%s\n", linha);

        strncpy(parcelas_string[0], linha + 2, 2);
        parcelas_string[0][2] = '\0';
        strncpy(parcelas_string[1], linha + 5, 3);
        parcelas_string[1][3] = '\0';
        strncpy(parcelas_string[2], linha + 11, 2);
        parcelas_string[2][2] = '\0';

        int resposta = 0;
        for (int i = 0; i < 3; ++i) {
            sscanf(parcelas_string[i], "%d", &parcelas[i]);
            resposta += parcelas[i];
        }

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <sstream>

using namespace std;

int converte(string numero) {
    int resposta;
    stringstream ss;

    ss << numero;
    ss >> resposta;

    return resposta;
}

int main() {
    int N;
    string linha;
    int parcelas[3];

    cin >> N;
    for (int k = 0; k < N; ++k) {
        cin >> linha;

        parcelas[0] = converte(linha.substr(2, 2));
        parcelas[1] = converte(linha.substr(5, 3));
        parcelas[2] = converte(linha.substr(11, 2));

        int resposta = 0;
        for (int i = 0; i < 3; ++i) {
            resposta += parcelas[i];
        }

        cout << resposta << endl;
    }

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
		for(int k = 0; k < N; ++k){
			string linha = Console.ReadLine();

			int[] parcelas = new int[3];
			parcelas[0] = int.Parse(linha.Substring(2, 2));
			parcelas[1] = int.Parse(linha.Substring(5, 3));
			parcelas[2] = int.Parse(linha.Substring(11, 2));

			int resposta = 0;
			for(int i = 0; i < 3; ++i){
				resposta += parcelas[i];
			}

			Console.WriteLine(resposta);
		}
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
		for(int k = 0; k < N; ++k){
			String linha = in.readLine();

			int[] parcelas = new int[3];
			parcelas[0] = Integer.parseInt(linha.substring(2, 4));
			parcelas[1] = Integer.parseInt(linha.substring(5, 8));
			parcelas[2] = Integer.parseInt(linha.substring(11, 13));

			int resposta = 0;
			for(int i = 0; i < 3; ++i){
				resposta += parcelas[i];
			}

			System.out.println(resposta);
		}
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let N = parseInt(lines.shift());
for (let k = 1; k <= N; ++k) {
	let linha = lines.shift();

	let parcelas = [];
	parcelas.push(parseInt(linha.substring(2, 4)));
	parcelas.push(parseInt(linha.substring(5, 8)));
	parcelas.push(parseInt(linha.substring(11, 13)));

	let resposta = 0;
	for (let i = 0; i < 3; ++i) {
		resposta += parcelas[i];
	}
	console.log(resposta);
}
```

### Python 3.9
```py
N = int(input())

for _ in range(N):
    linha = input()

    parcelas = [int(linha[2:4]), int(linha[5:8]), int(linha[11:13])]
    resposta = sum(parcelas)

    print(resposta)
```