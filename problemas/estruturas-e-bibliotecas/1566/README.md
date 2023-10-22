# 1566 - Altura

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1566)

## Solução

Note uma temos que lidar com uma quantidade muito grande de casos de teste e de alturas diferentes a serem ordenadas, que pode chegar à ordem de 300 milhões de elementos no total. Como sabemos que todas as alturas sempre estarão no intervalo entre $20$ e $230$ cm, o [Counting sort](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#counting-sort)  vem como uma excelente alternativa para ordenar tantos dados rapidamente.

> As soluções em Java e Python ou estão retornando _Time Limit Exceeded_ ou _Memory Limit Exceeded_, então não temos essas duas disponíveis por enquanto.

### C99
```c
#include <stdio.h>
#include <stdlib.h>

void countingSort(int *V, int n, int limite) {
    int *aux = (int *)malloc(limite * sizeof(int));
    int k = 0;
    for (int i = 0; i < limite; ++i) {
        aux[i] = 0;
    }
    for (int i = 0; i < n; ++i) {
        aux[V[i]] += 1;
    }
    for (int i = 0; i < limite; ++i) {
        for (int j = 0; j < aux[i]; ++j) {
            V[k++] = i;
        }
    }
    free(aux);
}

int main(void) {
    int NC, N;
    int *V;

    scanf("%d", &NC);
    for (int k = 0; k < NC; ++k) {
        scanf("%d", &N);

        V = (int *)malloc(N * sizeof(int));
        for (int i = 0; i < N; ++i) {
            scanf("%d", &V[i]);
        }

        countingSort(V, N, 231);

        if (N > 0) {
            printf("%d", V[0]);
        }
        for (int i = 1; i < N; ++i) {
            printf(" %d", V[i]);
        }
        printf("\n");
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <vector>

using namespace std;

void countingSort(vector<int> &V, int limite) {
    vector<int> aux(limite, 0);
    int k = 0, n = V.size();
    for (int i = 0; i < n; ++i) {
        aux[V[i]] += 1;
    }
    for (int i = 0; i < limite; ++i) {
        for (int j = 0; j < aux[i]; ++j) {
            V[k++] = i;
        }
    }
}

int main() {
    int NC, N;
    vector<int> V;

    cin >> NC;
    for (int k = 0; k < NC; ++k) {
        cin >> N;

        V.assign(N, 0);
        for (int i = 0; i < N; ++i) {
            cin >> V[i];
        }

        countingSort(V, 231);

        if (N > 0) {
            cout << V[0];
        }
        for (int i = 1; i < N; ++i) {
            cout << ' ' << V[i];
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
	static void countingSort(ref List<int> V, int limite){
		List<int> aux = new List<int>(limite);
		for(int i = 0; i < limite; ++i){
			aux.Add(0);
		}
		int k = 0, n = V.Count;
		for(int i = 0; i < n; ++i){
			aux[V[i]] += 1;
		}
		for(int i = 0; i < limite; ++i){
			for(int j = 0; j < aux[i]; ++j){
				V[k++] = i;
			}
		}
	}
	
    static void Main(string[] args) {
        int NC = int.Parse(Console.ReadLine());
		for(int k = 0; k < NC; ++k){
			int N = int.Parse(Console.ReadLine());

			List<int> V = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

			countingSort(ref V, 231);

			Console.WriteLine(String.Join(" ", V));
		}
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const countingSort = (V, limite) => {
	let aux = Array(limite);
	for(let i = 0; i < limite; ++i){
		aux[i] = 0;
	}
	let k = 0;
	for(let i = 0; i < V.length; ++i){
		aux[V[i]] += 1;
	}
	for(let i = 0; i < limite; ++i){
		for(let j = 0; j < aux[i]; ++j){
			V[k++] = i;
		}
	}
};

let NC = parseInt(lines.shift());
for (let k = 0; k < NC; ++k) {
	let N = parseInt(lines.shift());

	let V = lines.shift().trim().split(' ').map(x => parseInt(x));

	countingSort(V, 231);

	console.log(V.join(' '));
}
```