# 1076 - Desenhando Labirintos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1076)

## Solução

A forma ótima de se percorrer um grafo repetindo as arestas o mínimo possível é percorrendo-o através da [busca em profundidade](../../../base-teorica/grafos/percursos/README.md#busca-em-profundidade). Nesse caso, estamos tratando de um grafo com uma única componente conexa sem ciclos, que não podemos chamar de árvore porque nem todos os vértices são conectados, que vamos então considerar que é uma "árvore", assim mesmo, entre aspas.

Com isso em mente, perceba que cada vértice $v$ no grafo só tem um pai $u$ e, logo, $DFS(v)$ só será chamado uma vez para a aresta $uv$ que relaciona $v$ com seu pai. Com isso, para essa aresta em específico, ela será vista duas vezes:

1. Uma vez no começo da chamada de $DFS(v)$, vindo de $uv$;
2. Uma vez ao terminar a chamada de $DFS(v)$, voltando para $DFS(u)$, passando por $uv$.

Logo, sem perda de generalidade, podemos dizer que para toda aresta do grafo, tal aresta é passada exatamente duas vezes. Então a gente nem precisa fazer a busca em profundidade, apenas contar o número de arestas e multiplicar por 2 já basta. O único cuidado aqui é que precisamos identificar quais arestas são repetidas para não as contarmos duas vezes. Mas usando conjuntos, como colocamos as duas direções por vez, podemos só considerar o tamanho do conjunto como resposta válida.

> Em JavaScript, eu não sabia como que botava tuplas no conjunto, então fiz tipo um _hash_ para relacionar cada aresta com um número inteiro único. Como nunca há mais de 99 vértices nesse grafo, funcionou bem.

### C99
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
	int grafo[50][50];
	int T, X, n, m, u, v;

	scanf("%d\n", &T);

	for (int k = 0; k < T; ++k) {
		scanf("%d\n", &X);

		scanf("%d %d\n", &n, &m);

		memset(grafo, 0, sizeof(grafo));

		for (int i = 0; i < m; ++i) {
			scanf("%d %d\n", &u, &v);
			grafo[u][v] = 1;
			grafo[v][u] = 1;
		}

		int resposta = 0;
		for (int i = 0; i < n; ++i) {
			for (int j = i; j < n; ++j) {
				if (grafo[i][j] == 1) {
					++resposta;
				}
			}
		}

		printf("%d\n", 2 * resposta);
	}

	return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <set>

using namespace std;

int main() {
	int T;

	cin >> T;

	for (int k = 0; k < T; ++k) {
		int X;

		cin >> X;

		int n, m;
		cin >> n >> m;

		set<pair<int, int>> arestas = set<pair<int, int>>();
		for (int i = 0; i < m; ++i) {
			int u, v;

			cin >> u >> v;
			arestas.insert(pair<int, int>(u, v));
			arestas.insert(pair<int, int>(v, u));
		}

		cout << arestas.size() << endl;
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
    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());

        for(int k = 0; k < T; ++k){
            int X = int.Parse(Console.ReadLine());

            List<int> nm = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int n = nm[0];
            int m = nm[1];

            HashSet<Tuple<int, int>> arestas = new HashSet<Tuple<int, int>>();
            for(int i = 0; i < m; ++i){
                List<int> aresta = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                int u = aresta[0];
                int v = aresta[1];

                arestas.Add(new Tuple<int, int>(u, v));
                arestas.Add(new Tuple<int, int>(v, u));
            }

            Console.WriteLine(arestas.Count);
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.AbstractMap.SimpleEntry;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());

        for(int k = 0; k < T; ++k){
            int N = Integer.parseInt(in.readLine());

            String[] nm = in.readLine().trim().split(" ");
            int n = Integer.parseInt(nm[0]);
            int m = Integer.parseInt(nm[1]);

            HashSet<SimpleEntry<Integer, Integer>> arestas = new HashSet<SimpleEntry<Integer, Integer>>();
            for(int i = 0; i < m; ++i){
                String[] uv = in.readLine().trim().split(" ");
                int u = Integer.parseInt(uv[0]);
                int v = Integer.parseInt(uv[1]);

                arestas.add(new SimpleEntry<Integer, Integer>(u, v));
                arestas.add(new SimpleEntry<Integer, Integer>(v, u));
            }

            System.out.println(arestas.size());
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let T = parseInt(lines.shift());
for(let k = 0; k < T; ++k){
    let N = parseInt(lines.shift());

    let [n, m] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let arestas = new Set();
    for(let i = 0; i < m; ++i){
        let [u, v] = lines.shift().trim().split(' ').map(x => parseInt(x));
        
        arestas.add(100 * u + v);
        arestas.add(100 * v + u);
    }

    console.log(arestas.size);
}
```

### Python 3.9
```py
N = int(input())

for _ in range(N):
    N = int(input())

    n, m = [int(x) for x in input().strip().split(' ')]

    arestas = set()
    for _ in range(m):
        u, v = [int(x) for x in input().strip().split(' ')]

        arestas.add((u, v))
        arestas.add((v, u))

    print(len(arestas))
```